import React, { useEffect, useState } from 'react';
import { View, Text, Button, ScrollView, Alert } from 'react-native';
import axios from 'axios';
import AsyncStorage from '@react-native-async-storage/async-storage';
import config from '../../../../config';
import styles from './style';
import VLibras from './Vlibraexcluir'; 

export default function DeleteExamsScreen() {
  const [exams, setExams] = useState([]);

  useEffect(() => {
    const fetchExams = async () => {
      try {
        const Id = await AsyncStorage.getItem("userId");
        const response = await axios.get(`${config.apiBaseUrl}/examspuxar/${Id}`);
        if (Array.isArray(response.data)) {
          setExams(response.data);
        } else {
          console.error('Response data is not an array:', response.data);
        }
      } catch (error) {
        console.error('Error fetching data:', error);
      }
    };

    fetchExams();
  }, []);

  const deleteExam = (id) => {
    Alert.alert(
      'Confirmar exclusão',
      'Tem certeza de que deseja excluir este exame? Essa ação não pode ser desfeita.',
      [
        {
          text: 'Cancelar',
          style: 'cancel'
        },
        {
          text: 'Deletar',
          onPress: async () => {
            try {
              await axios.delete(`${config.apiBaseUrl}/examsdeletar/${id}`);
              const updatedExams = exams.filter(exam => exam.id !== id);
              setExams(updatedExams);
              Alert.alert('Sucesso', 'Exame excluído com sucesso');
            } catch (error) {
              console.error('Erro ao excluir exame:', error);
              Alert.alert('Erro', 'Erro ao excluir exame');
            }
          }
        }
      ]
    );
  };

  const renderExams = () => {
    return exams.map((exam) => (
      <View key={exam.id} style={styles.examContainer}>
        <View style={styles.examDetails}>
          <Text style={styles.examText}>{exam.name}</Text>
          <Text style={styles.examText}>{exam.date}</Text>
        </View>
        <Button title="Delete" onPress={() => deleteExam(exam.id)} color={"#df0000"} />
      </View>
    ));
  };

  return (
    <View style={styles.container}>
      <ScrollView>
        {exams.length > 0 ? renderExams() : <Text>Nenhum exame encontrado.</Text>}
      </ScrollView>
      <VLibras /> 
    </View>
  );
};
