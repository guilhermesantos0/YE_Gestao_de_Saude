import React, { useState, useEffect } from 'react';
import { View, Text, FlatList, TouchableOpacity, Alert, Modal, TextInput } from 'react-native';
import axios from 'axios';
import AsyncStorage from '@react-native-async-storage/async-storage';
import styles from './style';
import config from '../../../../config';

const AlturaPeso = () => {
  const [records, setRecords] = useState([]);
  const [modalVisible, setModalVisible] = useState(false);
  const [altura, setAltura] = useState('');
  const [peso, setPeso] = useState('');

  const fetchUserRecords = async () => {
    try {
      const userId = await AsyncStorage.getItem('userId');
      if (userId) {
        const response = await axios.get(`${config.apiBaseUrl}/user/${userId}`);
        setRecords(response.data);
      }
    } catch (error) {
      console.error('Erro ao buscar registros de altura e peso do usuÃ¡rio:', error);
    }
  };

  useEffect(() => {
    fetchUserRecords();
  }, []);

  const handleSaveProfile = async () => {
    if (!altura || !peso) {
      alert('Por favor, preencha todos os campos.');
      return;
    }

    try {
      const userId = await AsyncStorage.getItem('userId');
      const updatedProfile = {
        altura,
        peso
      };

      await axios.post(`${config.apiBaseUrl}/editProfile/${userId}`, updatedProfile);
      setModalVisible(false);
      setAltura('');
      setPeso('');
      fetchUserRecords();
    } catch (error) {
      console.error('Erro ao atualizar perfil de altura e peso:', error);
    }
  };

  return (
    <View style={styles.container}>
      <Text style={styles.header}>Editar Perfil: Altura e Peso</Text>
      <FlatList
        data={records}
        keyExtractor={item => item.id.toString()}
        renderItem={({ item }) => (
          <View style={styles.item}>
            <Text style={styles.title}>Altura: {item.height} cm</Text>
            <Text style={styles.subtitle}>Peso: {item.weight} kg</Text>
          </View>
        )}
      />
      <TouchableOpacity onPress={() => setModalVisible(true)} style={styles.footerButton}>
        <Text style={styles.footerButtonText}>Editar</Text>
      </TouchableOpacity>
      <Modal
        animationType="slide"
        transparent={true}
        visible={modalVisible}
        onRequestClose={() => setModalVisible(!modalVisible)}
      >
        <View style={styles.modalView}>
          <Text style={styles.label}>Altura (cm):</Text>
          <TextInput
            style={styles.input}
            onChangeText={setAltura}
            value={altura}
            keyboardType="numeric"
          />
          <Text style={styles.label}>Peso (kg):</Text>
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
            <TouchableOpacity onPress={handleSaveProfile} style={styles.modalButton}>
              <Text style={styles.modalButtonText}>Salvar</Text>
            </TouchableOpacity>
          </View>
        </View>
      </Modal>
    </View>
  );
};

export default AlturaPeso;
