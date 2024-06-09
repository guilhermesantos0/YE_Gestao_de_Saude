import React, { useEffect, useState } from 'react';
import { View, Text, Button, ScrollView, Alert } from 'react-native';
import styles from './style';

const localExams = [
  { id: 1, name: 'Exame de Sangue', date: '2024-05-01' },
  { id: 2, name: 'Exame de Urina', date: '2024-06-01' },
  { id: 3, name: 'Exame de Colesterol', date: '2024-04-20' },
  { id: 4, name: 'Exame de Glicose', date: '2024-03-15' },
  { id: 5, name: 'Exame de Tireoide', date: '2024-02-10' },
  { id: 6, name: 'Exame de Fezes', date: '2024-01-25' },
  { id: 7, name: 'Exame de Raio-X', date: '2024-03-22' },
  { id: 8, name: 'Exame de ECG', date: '2024-04-05' },
  { id: 9, name: 'Exame de Audiometria', date: '2024-05-10' },
  { id: 10, name: 'Exame de Função Pulmonar', date: '2024-06-05' }
];

const DeleteExamsScreen = () => {
  const [exams, setExams] = useState(localExams);

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
          onPress: () => {
            const updatedExams = exams.filter(exam => exam.id !== id);
            setExams(updatedExams);
            Alert.alert('Sucesso', 'Exame excluído com sucesso');
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