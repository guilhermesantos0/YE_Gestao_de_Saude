// Medicamentos.js
import React, { useState, useEffect } from 'react';
import { View, Text, FlatList, TouchableOpacity, Alert, Modal, TextInput } from 'react-native';
import axios from 'axios';
import AsyncStorage from '@react-native-async-storage/async-storage';

import styles from './style';

import config from '../../../config';

const Medicamentos = () => {
  const [medicines, setMedicines] = useState([]);
  const [selectedId, setSelectedId] = useState(null);
  const [modalVisible, setModalVisible] = useState(false);
  const [name, setName] = useState('');
  const [quantity, setQuantity] = useState('');
  const [interval, setInterval] = useState('');

  useEffect(() => {
    const fetchUserMedicines = async () => {
      try {
        const userId = await AsyncStorage.getItem('userId');
        if (userId) {
          const response = await axios.get(`${config.apiBaseUrl}/userMedicines/${userId}`);
          setMedicines(response.data);
        }
      } catch (error) {
        console.error('Erro ao buscar medicamentos do usuário:', error);
      }
    };

    fetchUserMedicines();
  }, []);

  const deleteMedicine = (id) => {
    Alert.alert(
      "Excluir Medicamento",
      "Tem certeza que deseja excluir este medicamento?",
      [
        { text: "Cancelar", style: "cancel" },
        {
          text: "OK", onPress: () => {
            setMedicines(prevMedicines => prevMedicines.filter(med => med.id !== id));
            setSelectedId(null);
          }
        }
      ]
    );
  };

  const handleAddMedicine = async () => {
    if (!name || !quantity || !interval) {
      alert('Por favor, preencha todos os campos.');
      return;
    }

    try {
      const userId = await AsyncStorage.getItem('userId');
      const newMedicine = {
        userId,
        medicineid: 12,
        amount: quantity,
        time: interval,
      };

      const response = await axios.post(`${config.apiBaseUrl}/addMedicine`, newMedicine);
      setMedicines(prevMedicines => [...prevMedicines, newMedicine]);
      setModalVisible(false);
      setName('');
      setQuantity('');
      setInterval('');
    } catch (error) {
      console.error('Erro ao adicionar medicamento:', error);
    }
  };

  const renderItem = ({ item }) => {
    const backgroundColor = item.id === selectedId ? "#ddd" : "#fff";

    return (
      <TouchableOpacity
        onPress={() => setSelectedId(item.id)}
        style={[styles.item, { backgroundColor }]}
      >
        <Text style={styles.title}>{item.name}</Text>
        <Text style={styles.subtitle}>{`${item.amount} x ${item.time}h`}</Text>
      </TouchableOpacity>
    );
  };

  return (
    <View style={styles.container}>
      <Text style={styles.header}>Medicamentos</Text>
      <FlatList
        data={medicines}
        renderItem={renderItem}
        keyExtractor={item => item.medicineid}
        extraData={selectedId}
        style={styles.list}
      />
      <View style={styles.footer}>
        <TouchableOpacity onPress={() => deleteMedicine(selectedId)} style={styles.footerButton}>
          <Text style={styles.footerButtonText}>🗑</Text>
        </TouchableOpacity>
        <TouchableOpacity onPress={() => setModalVisible(true)} style={styles.footerButton}>
          <Text style={styles.footerButtonText}>➕</Text>
        </TouchableOpacity>
      </View>
      <Modal
        animationType="slide"
        transparent={true}
        visible={modalVisible}
        onRequestClose={() => {
          setModalVisible(!modalVisible);
        }}
      >
        <View style={styles.modalView}>
          <Text style={styles.label}>Nome do Medicamento:</Text>
          <TextInput
            style={styles.input}
            onChangeText={setName}
            value={name}
          />
          <Text style={styles.label}>Quantidade:</Text>
          <TextInput
            style={styles.input}
            onChangeText={setQuantity}
            value={quantity}
            keyboardType="numeric"
          />
          <Text style={styles.label}>Em quanto tempo deverá tomar o remédio? (digite em horas):</Text>
          <TextInput
            style={styles.input}
            onChangeText={setInterval}
            value={interval}
            keyboardType="numeric"
          />
          <View style={styles.modalFooter}>
            <TouchableOpacity onPress={() => setModalVisible(false)} style={styles.modalButton}>
              <Text style={styles.modalButtonText}>Cancelar</Text>
            </TouchableOpacity>
            <TouchableOpacity onPress={handleAddMedicine} style={styles.modalButton}>
              <Text style={styles.modalButtonText}>Adicionar</Text>
            </TouchableOpacity>
          </View>
        </View>
      </Modal>
    </View>
  );
};

export default Medicamentos;
