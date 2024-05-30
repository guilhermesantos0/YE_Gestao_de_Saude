import React, { useEffect, useState } from 'react';
import { StyleSheet, Text, View, Button, ScrollView, Alert } from 'react-native';
import axios from 'axios';

import styles from './style';

const localExams = [
    { id: 1, name: 'Exam 1', result: 'Lorem ipsum dolor sit amet.', date: '2024-05-01' },
    { id: 2, name: 'Exam 2', result: 'Consectetur adipiscing elit.', date: '2024-05-02' },
    { id: 3, name: 'Exam 3', result: 'Sed do eiusmod tempor incididunt.', date: '2024-05-03' }
  ];
  
  export default function DeleteExamsScreen() {
    const [exams, setExams] = useState(localExams);
    const [examToDelete, setExamToDelete] = useState(null);
  
    const deleteExam = (id) => {
      setExamToDelete(id);
    };
  
    const confirmDelete = (id) => {
      const updatedExams = exams.filter(exam => exam.id !== id); 
      setExams(updatedExams); 
      Alert.alert('Sucesso', 'Exame excluído com sucesso'); 
      setExamToDelete(null); 
    };
  
    const cancelDelete = () => {
      setExamToDelete(null); 
    };
  
    useEffect(() => {
      if (examToDelete !== null) {
        Alert.alert(
          'Confirmar exclusão',
          'Tem certeza de que deseja excluir este exame? Essa ação não pode ser desfeita.',
          [
            {
              text: 'Cancelar',
              style: 'cancel',
              onPress: cancelDelete
            },
            {
              text: 'Deletar',
              onPress: () => confirmDelete(examToDelete)
            }
          ]
        );
      }
    }, [examToDelete]);
  
    const renderExams = () => {
      return exams.map((exam, index) => (
        <View key={index} style={styles.examContainer}>
          <View style={styles.examDetails}>
            <Text style={styles.examText}>{exam.name}</Text>
            <Text style={styles.examText}>{exam.date}</Text>
          </View>
          <Button title="Delete" onPress={() => deleteExam(exam.id)} color={"#df0000"}/>
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
  }