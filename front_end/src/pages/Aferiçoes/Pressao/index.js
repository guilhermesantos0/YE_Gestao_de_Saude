import React, { useState, useEffect } from 'react';
import { View, Text, FlatList, TouchableOpacity, Alert, Modal, TextInput } from 'react-native';
import axios from 'axios';
import AsyncStorage from '@react-native-async-storage/async-storage';
import styles from './style';
import config from '../../../../config';
import VLibras from './Vlibraspressao';

const BloodPressure = () => {
  const [records, setRecords] = useState([]);
  const [modalVisible, setModalVisible] = useState(false);
  const [systolic, setSystolic] = useState('');
  const [diastolic, setDiastolic] = useState('');

  const fetchBloodPressureRecords = async () => {
    try {
      const userId = await AsyncStorage.getItem('userId');
      if (userId) {
        const response = await axios.get(`${config.apiBaseUrl}/bloodpressure/${userId}`);
        setRecords(response.data);
      }
    } catch (error) {
      console.error('Erro ao buscar registros de pressão arterial:', error);
    }
  };

  useEffect(() => {
    fetchBloodPressureRecords();
  }, []);

  const getCurrentDate = () => {
    const date = new Date();
    const day = String(date.getDate()).padStart(2, '0');
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const year = date.getFullYear();
    return `${day}/${month}/${year}`;
  };

  const classifyBloodPressure = (systolic, diastolic) => {
    if (diastolic < 85 && systolic < 130) return 'Normal';
    if (diastolic >= 85 && diastolic <= 89 && systolic >= 130 && systolic <= 139) return 'Normal limítrofe';
    if (diastolic >= 90 && diastolic <= 99 && systolic >= 140 && systolic <= 159) return 'Hipertensão leve (estágio 1)';
    if (diastolic >= 100 && diastolic <= 109 && systolic >= 160 && systolic <= 179) return 'Hipertensão moderada (estágio 2)';
    if (diastolic >= 110 && systolic >= 180) return 'Hipertensão grave (estágio 3)';
    if (diastolic < 90 && systolic >= 140) return 'Hipertensão sistólica isolada';
    return 'Classificação desconhecida';
  };

  const handleAddBloodPressure = async () => {
    if (!systolic || !diastolic) {
      Alert.alert('Por favor, preencha todos os campos.');
      return;
    }

    try {
      const userId = await AsyncStorage.getItem('userId');
      const date = getCurrentDate();
      const newRecord = { userId, sistole: systolic, diastole: diastolic, date };

      await axios.post(`${config.apiBaseUrl}/bloodpressure`, newRecord);
      setRecords(prevRecords => [...prevRecords, newRecord]);
      setModalVisible(false);
      setSystolic('');
      setDiastolic('');
    } catch (error) {
      console.error('Erro ao adicionar registro de pressão arterial:', error);
    }
  };

  const renderItem = ({ item }) => {
    const classification = classifyBloodPressure(item.sistole, item.diastole);

    return (
      <View style={styles.item}>
        <Text style={styles.title}>{`Data: ${item.date}`}</Text>
        <Text style={styles.subtitle}>{`Sistólica: ${item.sistole} mmHg, Diastólica: ${item.diastole} mmHg`}</Text>
        <Text style={styles.classification}>{classification}</Text>
      </View>
    );
  };

  return (
    <View style={styles.container}>
      <Text style={styles.header}>Aferições de Pressão</Text>
      <FlatList
        data={records}
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
          <Text style={styles.label}>Sistólica (mmHg):</Text>
          <TextInput
            style={styles.input}
            onChangeText={setSystolic}
            value={systolic}
            keyboardType="numeric"
          />
          <Text style={styles.label}>Diastólica (mmHg):</Text>
          <TextInput
            style={styles.input}
            onChangeText={setDiastolic}
            value={diastolic}
            keyboardType="numeric"
          />
          <View style={styles.modalFooter}>
            <TouchableOpacity onPress={() => setModalVisible(false)} style={styles.modalButton}>
              <Text style={styles.modalButtonText}>Cancelar</Text>
            </TouchableOpacity>
            <TouchableOpacity onPress={handleAddBloodPressure} style={styles.modalButton}>
              <Text style={styles.modalButtonText}>Adicionar</Text>
            </TouchableOpacity>
          </View>
        </View>
      </Modal>
      <VLibras />
    </View>
  );
};

export default BloodPressure;
