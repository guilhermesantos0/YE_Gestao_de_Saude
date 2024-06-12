import React, { useState, useEffect } from 'react';
import { View, Text, FlatList, TouchableOpacity, Alert, Modal, TextInput } from 'react-native';
import axios from 'axios';
import AsyncStorage from '@react-native-async-storage/async-storage';
import styles from './style';
import config from '../../../../config';
import VLibras from './Vlibraspesoealtura';

const AlturaPeso = () => {
  const [records, setRecords] = useState([]);
  const [selectedId, setSelectedId] = useState(null);
  const [modalVisible, setModalVisible] = useState(false);
  const [altura, setAltura] = useState('');
  const [peso, setPeso] = useState('');

  const fetchUserRecords = async () => {
    try {
      const userId = await AsyncStorage.getItem('userId');
      if (userId) {
        const response = await axios.get(`${config.apiBaseUrl}/bloodpressure/${userId}`);
        setRecords(response.data);
      }
    } catch (error) {
      console.error('Erro ao buscar registros de altura e peso do usuário:', error);
    }
  };

  useEffect(() => {
    fetchUserRecords();
  }, []);

  const handleAddRecord = async () => {
    if (!altura || !peso) {
      alert('Por favor, preencha todos os campos.');
      return;
    }

    try {
      const userId = await AsyncStorage.getItem('userId');
      const newRecord = {
        userId,
        altura,
        peso,
        date: new Date().toISOString().split('T')[0]
      };

      const response = await axios.post(`${config.apiBaseUrl}/bloodpressure`, newRecord);
      setRecords(prevRecords => [...prevRecords, { ...newRecord, id: response.data.insertId }]);
      setModalVisible(false);
      setAltura('');
      setPeso('');
    } catch (error) {
      console.error('Erro ao adicionar registro de altura e peso:', error);
    }
  };

  const renderItem = ({ item }) => {
    const backgroundColor = item.id === selectedId ? "#ddd" : "#fff";

    return (
      <TouchableOpacity
        onPress={() => setSelectedId(item.id)}
        style={[styles.item, { backgroundColor }]}
      >
        <Text style={styles.title}>Altura: {item.altura} cm</Text>
        <Text style={styles.subtitle}>Peso: {item.peso} kg</Text>
        <Text style={styles.subtitle}>Data: {item.date}</Text>
      </TouchableOpacity>
    );
  };

  return (
    <View style={styles.container}>
      <Text style={styles.header}>Aferições de Altura e Peso</Text>
      <FlatList
        data={records}
        renderItem={renderItem}
        keyExtractor={item => item.id.toString()}
        extraData={selectedId}
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
          <Text style={styles.label}>Altura em cm: (cm):</Text>
          <TextInput
            style={styles.input}
            onChangeText={setAltura}
            value={altura}
            keyboardType="numeric"
          />
          <Text style={styles.label}>Peso em kg: (kg):</Text>
          <TextInput
            style={styles.input}
            onChangeText={setPeso}
            value={peso}
            keyboardType="numeric"
          />
          <View style={styles.modalFooter}>
            <TouchableOpacity onPress={() => setModalVisible(false)} style={styles.modalButton}>
              <Text style={styles.modalButtonText}>Cancelar</Text>
            </TouchableOpacity>
            <TouchableOpacity onPress={handleAddRecord} style={styles.modalButton}>
              <Text style={styles.modalButtonText}>Adicionar</Text>
            </TouchableOpacity>
          </View>
        </View>
      </Modal>
      <VLibras />
    </View>
  );
};

export default AlturaPeso;
