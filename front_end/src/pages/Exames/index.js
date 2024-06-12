import React, { useState, useEffect } from 'react';
import { View, Text, ScrollView, TouchableOpacity, Modal, Button, Alert } from 'react-native';
import axios from 'axios';
import AsyncStorage from '@react-native-async-storage/async-storage';
import config from '../../../config';
import styles from './style';
import VLibras from './Vlibrasexame'; 

export default function CombinedScreen({ navigation }) {
  const [modalVisible, setModalVisible] = useState(false);
  const [modalData, setModalData] = useState({});
  const [exams, setExams] = useState([]);
  const [allExams, setAllExams] = useState([]);

  const fetchExams = async () => {
    try {
      const userId = await AsyncStorage.getItem('userId');
      if (!userId) {
        throw new Error('User ID is not available');
      }
      const response = await axios.get(`${config.apiBaseUrl}/examspuxar/${userId}`);
      setExams(response.data);
      setAllExams(response.data);
    } catch (error) {
      console.error('Error fetching data:', error);
      Alert.alert('Erro', 'Erro ao buscar exames');
    }
  };

  useEffect(() => {
    fetchExams();
  }, []);

  const abrirModal = (name, result, date, id) => {
    setModalData({ name, result, date, id });
    setModalVisible(true);
  };

  const deleteExam = async () => {
    try {
      await axios.delete(`${config.apiBaseUrl}/examsdeletar/${modalData.id}`);
      const updatedExams = allExams.filter(exam => exam.id !== modalData.id);
      setAllExams(updatedExams);
      setExams(updatedExams);
      setModalVisible(false);
      Alert.alert('Sucesso', 'Exame excluído com sucesso');
    } catch (error) {
      console.error('Erro ao excluir exame:', error);
      Alert.alert('Erro', 'Erro ao excluir exame');
    }
  };

  const confirmDelete = () => {
    Alert.alert(
      'Confirmar exclusão',
      'Tem certeza de que deseja excluir este exame? Essa ação não pode ser desfeita.',
      [
        {
          text: 'Cancelar',
          style: 'cancel'
        },
        {
          text: 'Excluir',
          onPress: deleteExam,
          style: 'destructive'
        }
      ]
    );
  };

  return (
    <View style={styles.container}>
      <ScrollView>
        {exams.map((exam, index) => (
          <TouchableOpacity
            key={index}
            style={styles.box}
            onPress={() => abrirModal(exam.name, exam.result, exam.date, exam.id)}
          >
            <Text style={styles.boxText}>{exam.name}</Text>
            <Text style={styles.boxText}>{exam.date}</Text>
          </TouchableOpacity>
        ))}
      </ScrollView>

      <TouchableOpacity
        style={styles.addButton}
        onPress={() => navigation.navigate('Exames/Adicionar')}
      >
        <Text style={styles.buttonText}>Adicionar Exame</Text>
      </TouchableOpacity>

      <Modal
        animationType="slide"
        transparent={false}
        visible={modalVisible}
        onRequestClose={() => setModalVisible(false)}
      >
        <View style={styles.fullScreenView}>
          <View style={styles.modalHeader}>
            <Text style={styles.modalTitle}>Detalhes do Exame:</Text>
            <Button title="Fechar" onPress={() => setModalVisible(false)} color={'#789484'} />
          </View>
          <View style={styles.modalContent}>
            <Text style={styles.modalLabel}>Nome:</Text>
            <Text style={styles.modalText}>{modalData.name}</Text>
            <Text style={styles.modalLabel}>Data:</Text>
            <Text style={styles.modalText}>{modalData.date}</Text>
            <Text style={styles.modalLabel}>Resultado:</Text>
            <Text style={styles.result}>{modalData.result}</Text>
          </View>
          <Button title="Excluir Exame" onPress={confirmDelete} color={'#df0000'} />
        </View>
      </Modal>

      <VLibras />
    </View>
  );
}
