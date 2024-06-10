import React, { useState, useEffect } from 'react';
import { View, Text, FlatList, TouchableOpacity, Alert, Modal, TextInput } from 'react-native';
import axios from 'axios';
import AsyncStorage from '@react-native-async-storage/async-storage';
import RNPickerSelect from 'react-native-picker-select';
import styles from './style';
import config from '../../../config';

const Medicamentos = () => {
  const [medicines, setMedicines] = useState([]);
  const [availableMedicines, setAvailableMedicines] = useState([]);
  const [selectedId, setSelectedId] = useState(null);
  const [modalVisible, setModalVisible] = useState(false);
  const [selectedMedicine, setSelectedMedicine] = useState('');
  const [quantity, setQuantity] = useState('');
  const [interval, setTimeInterval] = useState('');
  const [pickerItems, setPickerItems] = useState([]);

  const fetchUserMedicines = async () => {
    try {
      const userId = await AsyncStorage.getItem('userId');
      if (userId) {
        const response = await axios.get(`${config.apiBaseUrl}/userMedicines/${userId}`);
        const medicinesWithIds = response.data.map(med => ({
          ...med,
          medicineid: med.medicineid || med.id 
        }));
        setMedicines(medicinesWithIds);
      }
    } catch (error) {
      console.error('Erro ao buscar medicamentos do usuário:', error);
    }
  };

  const fetchAvailableMedicines = async () => {
    try {
      const response = await axios.get(`${config.apiBaseUrl}/medicines`);
      setAvailableMedicines(response.data);
      const items = response.data.map(med => ({
        label: `${med.medicamento} ${med.concentracao}`,
        value: med.id
      }));
      setPickerItems(items);
    } catch (error) {
      console.error('Erro ao buscar medicamentos disponíveis:', error);
    }
  };

  useEffect(() => {
    fetchUserMedicines();
  }, []);

  useEffect(() => {
    fetchAvailableMedicines();
  }, []);

  const deleteMedicine = async (id) => {
    Alert.alert(
      "Excluir Medicamento",
      "Tem certeza que deseja excluir este medicamento?",
      [
        { text: "Cancelar", style: "cancel" },
        {
          text: "OK", onPress: async () => {
            try {
              await axios.delete(`${config.apiBaseUrl}/deleteMedicine/${id}`);
              setMedicines(prevMedicines => prevMedicines.filter(med => med.id !== id));
              setSelectedId(null);
            } catch (error) {
              console.error('Erro ao excluir medicamento:', error);
            }
          }
        }
      ]
    );
  };

  const handleAddMedicine = async () => {
    if (!selectedMedicine || !quantity || !interval) {
      alert('Por favor, preencha todos os campos.');
      return;
    }

    try {
      const userId = await AsyncStorage.getItem('userId');
      const newMedicine = {
        userId,
        medicineid: selectedMedicine,
        amount: quantity,
        time: interval,
      };

      await axios.post(`${config.apiBaseUrl}/addMedicine`, newMedicine);
      const addedMedicine = availableMedicines.find(med => med.id === selectedMedicine);
      setMedicines(prevMedicines => [...prevMedicines, { ...newMedicine, medicamento: `${addedMedicine.medicamento}`, concentracao: `${addedMedicine.concentracao}` }]);
      setModalVisible(false);
      setSelectedMedicine('');
      setQuantity('');
      setTimeInterval('');
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
        <Text style={styles.title}>{item.medicamento} {item.concentracao}</Text>
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
        keyExtractor={item => item.medicineid.toString()}
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
        onRequestClose={() => setModalVisible(!modalVisible)}
      >
        <View style={styles.modalView}>
          <Text style={styles.label}>Nome do Medicamento:</Text>
          <RNPickerSelect
            onValueChange={(itemValue) => setSelectedMedicine(itemValue)}
            items={pickerItems}
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
            onChangeText={setTimeInterval}
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
