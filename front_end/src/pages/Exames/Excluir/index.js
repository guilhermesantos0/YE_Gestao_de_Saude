import React, { useEffect, useState } from 'react';
import { View, Text, Button, ScrollView, Alert } from 'react-native';
import axios from 'axios';
import styles from './style';

const DeleteExamsScreen = () => {
  const [exams, setExams] = useState([]);

  useEffect(() => {
    // Função para buscar exames do backend
    const fetchExams = async () => {
      try {
        const response = await axios.get('http://<YOUR_SERVER_URL>/exams');
        setExams(response.data);
      } catch (error) {
        console.error('Erro ao buscar exames:', error);
        Alert.alert('Erro', 'Erro ao buscar exames');
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
              await axios.delete(`http://<YOUR_SERVER_URL>/exams/${id}`);
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
        {renderExams()}
      </ScrollView>
    </View>
  );
};

export default DeleteExamsScreen;
