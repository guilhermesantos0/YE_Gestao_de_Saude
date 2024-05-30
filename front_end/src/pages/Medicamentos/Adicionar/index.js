import React, { useState } from 'react';
import { View, Text, TextInput, TouchableOpacity } from 'react-native';


import styles from './style';

const M_Adicionar = ({ navigation, route }) => {
  const [name, setName] = useState('');
  const [quantity, setQuantity] = useState('');
  const [interval, setInterval] = useState('');

  const handleAddMedicine = () => {
    if (!name || !quantity || !interval) {
      alert('Por favor, preencha todos os campos.');
      return;
    }

    navigation.navigate('Medicacoes', {
      newMedicine: {
        id: Date.now().toString(),
        name,
        schedule: `${quantity} x ${interval}h`,
      },
    });
  };

  return (
    <View style={styles.container}>
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
      <View style={styles.footer}>
        <TouchableOpacity onPress={() => navigation.goBack()} style={styles.footerButton}>
          <Text style={styles.footerButtonText}>Cancelar</Text>
        </TouchableOpacity>
        <TouchableOpacity onPress={handleAddMedicine} style={styles.footerButton}>
          <Text style={styles.footerButtonText}>Adicionar</Text>
        </TouchableOpacity>
      </View>
    </View>
  );
};

export default M_Adicionar