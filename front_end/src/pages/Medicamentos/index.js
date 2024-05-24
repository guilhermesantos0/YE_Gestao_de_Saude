import React, { useState, useEffect } from 'react';
import { View, Text, FlatList, TouchableOpacity, Alert, Modal, TextInput } from 'react-native';

import styles from './style';

const initialData = [
  { id: '1', name: 'advil', schedule: '2 x 8h' },
  { id: '2', name: 'benegripe', schedule: '1 x 8h' },
  { id: '3', name: 'tandrilax', schedule: '1 x 24h' },
  { id: '4', name: 'sinus', schedule: '1 x 8h' },
  { id: '5', name: 'paracetamol', schedule: '1 x 8h' },
  { id: '6', name: 'omeprazol', schedule: '1 x 24h' },
  { id: '7', name: 'dorflex', schedule: '1 x 24h' },
];

const Medicamentos = () => {
  const [medicines, setMedicines] = useState(initialData);
  const [selectedId, setSelectedId] = useState(null);
  const [modalVisible, setModalVisible] = useState(false);
  const [name, setName] = useState('');
  const [quantity, setQuantity] = useState('');
  const [interval, setInterval] = useState('');

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

  const handleAddMedicine = () => {
    if (!name || !quantity || !interval) {
      alert('Por favor, preencha todos os campos.');
      return;
    }

    const newMedicine = {
      id: Date.now().toString(),
      name,
      schedule: `${quantity} x ${interval}h`,
    };

    setMedicines(prevMedicines => [...prevMedicines, newMedicine]);
    setModalVisible(false);
    setName('');
    setQuantity('');
    setInterval('');
  };

  const renderItem = ({ item }) => {
    const backgroundColor = item.id === selectedId ? "#ddd" : "#fff";

    return (
      <TouchableOpacity
        onPress={() => setSelectedId(item.id)}
        style={[styles.item, { backgroundColor }]}
      >
        <Text style={styles.title}>{item.name}</Text>
        <Text style={styles.subtitle}>{item.schedule}</Text>
      </TouchableOpacity>
    );
  };

  return (
    <View style={styles.container}>
      <Text style={styles.header}>Medicamentos</Text>
      <FlatList
        data={medicines}
        renderItem={renderItem}
        keyExtractor={item => item.id}
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


export default Medicamentos