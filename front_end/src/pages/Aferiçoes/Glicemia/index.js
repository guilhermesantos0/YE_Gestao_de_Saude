import React, { useState, useEffect } from 'react';
import { View, Text, FlatList, TouchableOpacity, Modal, TextInput, Alert } from 'react-native';
import axios from 'axios';
import AsyncStorage from '@react-native-async-storage/async-storage';
import RNPickerSelect from 'react-native-picker-select';
import styles from './style';
import config from '../../../../config';
import VLibrasGlicemia from './Vlibrasglicemia';

const AfericaoGlicemia = () => {
  const [glicemias, setGlicemias] = useState([]);
  const [modalVisible, setModalVisible] = useState(false);
  const [glicemia, setGlicemia] = useState('');
  const [jejum, setJejum] = useState(null);
  const [status, setStatus] = useState('');

  const fetchUserGlicemias = async () => {
    try {
      const userId = await AsyncStorage.getItem('userId');
      if (userId) {
        const response = await axios.get(`${config.apiBaseUrl}/glicemia/${userId}`);
        setGlicemias(response.data);
      }
    } catch (error) {
      console.error('Erro ao buscar registros de glicemia:', error);
    }
  };

  useEffect(() => {
    fetchUserGlicemias();
  }, []);

  const getCurrentDate = () => {
    const date = new Date();
    const day = String(date.getDate()).padStart(2, '0');
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const year = date.getFullYear();
    return `${day}/${month}/${year}`;
  };

  const handleAddGlicemia = async () => {
    if (!glicemia || jejum === null) {
      alert('Por favor, preencha todos os campos.');
      return;
    }

    try {
      const userId = await AsyncStorage.getItem('userId');
      const date = getCurrentDate();
      const newGlicemia = { userId, glicemia, jejum, date };

      await axios.post(`${config.apiBaseUrl}/glicemia`, newGlicemia);
      setGlicemias(prevGlicemias => [...prevGlicemias, newGlicemia]);
      setModalVisible(false);
      setGlicemia('');
      setJejum(null);
      determineGlicemiaStatus(glicemia, jejum);
    } catch (error) {
      console.error('Erro ao adicionar registro de glicemia:', error);
    }
  };

  const determineGlicemiaStatus = (glicemiaValue, jejumValue) => {
    const glicemiaInt = parseInt(glicemiaValue);
    if (jejumValue) {
      if (glicemiaInt <= 70) {
        setStatus('Glicemia de jejum baixa ou hipoglicemia');
      } else if (glicemiaInt < 100) {
        setStatus('Glicemia de jejum normal');
      } else if (glicemiaInt < 126) {
        setStatus('Glicemia de jejum alterada');
      } else {
        setStatus('Diabetes');
      }
    } else {
      if (glicemiaInt < 70) {
        setStatus('Glicemia baixa');
      } else if (glicemiaInt <= 100) {
        setStatus('Glicemia normal');
      } else {
        setStatus('Glicemia alta');
      }
    }
  };

  const renderItem = ({ item }) => (
    <View style={styles.item}>
      <Text style={styles.title}>{`Glicemia: ${item.glicemia} mg/dL`}</Text>
      <Text style={styles.subtitle}>{`Jejum: ${item.jejum ? 'Sim' : 'Não'}`}</Text>
      <Text style={styles.subtitle}>{`Data: ${item.date}`}</Text>
    </View>
  );

  return (
    <View style={styles.container}>
      <Text style={styles.header}>Aferição de Glicemia</Text>
      <FlatList
        data={glicemias}
        renderItem={renderItem}
        keyExtractor={item => item.id.toString()}
        style={styles.list}
      />
      <View style={styles.footer}>
        <TouchableOpacity onPress={() => setModalVisible(true)} style={styles.footerButton}>
          <Text style={styles.footerButtonText}>➕</Text>
        </TouchableOpacity>
      </View>
      <Modal
        animationType="slide"
        transparent={true}
        visible={modalVisible}
        onRequestClose={() => setModalVisible(!modalVisible)}
      >
        <View style={styles.modalView}>
          <Text style={styles.label}>Glicemia (mg/dL):</Text>
          <TextInput
            style={styles.input}
            onChangeText={setGlicemia}
            value={glicemia}
            keyboardType="numeric"
          />
          <Text style={styles.label}>Jejum:</Text>
          <RNPickerSelect
            onValueChange={(value) => setJejum(value)}
            items={[
              { label: 'Sim', value: true },
              { label: 'Não', value: false },
            ]}
          />
          <View style={styles.modalFooter}>
            <TouchableOpacity onPress={() => setModalVisible(false)} style={styles.modalButton}>
              <Text style={styles.modalButtonText}>Cancelar</Text>
            </TouchableOpacity>
            <TouchableOpacity onPress={handleAddGlicemia} style={styles.modalButton}>
              <Text style={styles.modalButtonText}>Adicionar</Text>
            </TouchableOpacity>
          </View>
          {status ? <Text style={styles.status}>{status}</Text> : null}
        </View>
      </Modal>
      <VLibrasGlicemia />
    </View>
  );
};

export default AfericaoGlicemia;
