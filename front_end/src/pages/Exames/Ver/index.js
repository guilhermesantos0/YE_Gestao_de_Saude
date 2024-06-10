import React, { useEffect, useState } from 'react';
import { StyleSheet, Text, View, TouchableOpacity, Modal, Button, ScrollView } from 'react-native';
import axios from 'axios';

import styles from "./style";

export default function VerExames() {
  const [modalVisible, setModalVisible] = useState(false);
  const [modalData, setModalData] = useState({});
  const [exams, setExams] = useState([]);

  useEffect(() => {
    axios.get('http://localhost:3000/exams')
      .then(response => {
        setExams(response.data);
      })
      .catch(error => {
        console.error('Error fetching data:', error);
      });
  }, []);

  const abrirModal = (nome, result, date) => {
    setModalData({ nome, result, date });
    setModalVisible(true);
  };

  const renderizarCaixas = () => {
    return exams.map((exam, index) => (
      <TouchableOpacity
        key={index}
        style={styles.box}
        onPress={() => abrirModal(exam.name, exam.result, exam.date)}
      >
        <Text style={styles.boxText}>{exam.name}</Text>
        <Text style={styles.boxText}>{exam.date}</Text>
      </TouchableOpacity>
    ));
  };

  return (
    <View style={styles.container}>
      <ScrollView>
        {renderizarCaixas()}
      </ScrollView>

      <Modal
        animationType="slide"
        transparent={false}
        visible={modalVisible}
        onRequestClose={() => setModalVisible(!modalVisible)}
      >
        <View style={styles.fullScreenView}>
          <View style={styles.modalHeader}>
            <Text style={styles.modalTitle}>Detalhes do Exame:</Text>
            <Button title="Fechar" onPress={() => setModalVisible(!modalVisible)} color={'#df0000'} />
          </View>
          <View style={styles.modalContent}>
            <Text style={styles.modalLabel}>Nome:</Text>
            <Text style={styles.modalText}>{modalData.nome}</Text>
            <Text style={styles.modalLabel}>Data:</Text>
            <Text style={styles.modalText}>{modalData.date}</Text>
            <Text style={styles.modalLabel}>Resultado:</Text>
            <Text style={styles.result}>{modalData.result}</Text>
          </View>
        </View>
      </Modal>
    </View>
  );
}
