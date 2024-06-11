import React, { useState } from 'react';
import { View, Text, TextInput, Button, Alert, Platform } from 'react-native';
import axios from 'axios';
import AsyncStorage from '@react-native-async-storage/async-storage';
import { useNavigation } from '@react-navigation/native';
import styles from "./style";
import config from '../../../../../config';
import VLibras from './VlibrasManual';

export default function CadastroExame() {
  const [nome, setNome] = useState('');
  const [data, setData] = useState('');
  const [resultado, setResultado] = useState('');

  const navigation = useNavigation();

  const handleCadastro = async () => {
    try {
      const userId = await AsyncStorage.getItem("userId");  
      if (!userId) {
        Alert.alert('Erro', 'Usuário não identificado.');
        return;
      }

      // Validar e formatar a data no formato yyyy-MM-dd
      const [day, month, year] = data.split('/');
      const parsedDate = `${year}-${month}-${day}`;
      if (!/^\d{4}-\d{2}-\d{2}$/.test(parsedDate)) {
        Alert.alert('Erro', 'Data inválida. Por favor, use o formato dd/mm/aaaa.');
        return;
      }

      console.log('Dados enviados para a API:', {
        userId: userId,
        name: nome,
        date: parsedDate,
        result: resultado,
      });

      const response = await axios.post(`${config.apiBaseUrl}/examsmandar`, {
        userId: userId,
        name: nome,
        date: parsedDate,
        result: resultado,
      });

      console.log('Resposta da API:', response);

      if (response.status === 201) {
        Alert.alert('Sucesso', 'Exame cadastrado com sucesso!', [
          {
            text: "OK",
            onPress: () => navigation.goBack(),
          },
        ]);
        setNome('');
        setData('');
        setResultado('');
      } else {
        Alert.alert('Erro', 'Erro ao cadastrar exame.');
      }
    } catch (error) {
      console.error('Erro ao cadastrar exame:', error);
      if (error.response && error.response.data && error.response.data.error) {
        Alert.alert('Erro', error.response.data.error);
      } else {
        Alert.alert('Erro', 'Erro ao cadastrar exame.');
      }
    }
  };

  const handleDateChange = (date) => {
    setData(date);
  };

  return (
    <View style={styles.container}>
      <Text style={styles.label}>Nome do Exame:</Text>
      <TextInput
        style={styles.input}
        placeholder="Digite o nome do exame"
        value={nome}
        onChangeText={setNome}
      />
      <Text style={styles.label}>Data do Exame:</Text>
      <TextInput
        style={styles.input}
        placeholder="Digite a data do exame (dd/mm/aaaa)"
        value={data}
        onChangeText={handleDateChange}
        onBlur={() => handleDateChange(data)} 
      />
      <Text style={styles.label}>Resultado do Exame:</Text>
      <TextInput
        style={styles.input}
        placeholder="Digite o resultado do exame"
        value={resultado}
        onChangeText={setResultado}
      />
      <View style={styles.buttonContainer}>
        <Button
          title="Cadastrar Exame"
          onPress={handleCadastro}
          color={Platform.OS === 'ios' ? '#007BFF' : undefined} 
        />
      </View>
      <VLibras />
    </View>
  );
}
