import React, { useEffect, useState } from 'react';
import { StyleSheet, Text, View, TouchableOpacity, Modal, Button, ScrollView } from 'react-native';
import axios from 'axios';

import styles from "./style";

export default function App() {
    const [modalVisible, setModalVisible] = useState(false);
    const [modalData, setModalData] = useState({});
    const [exams, setExams] = useState([]);
  
    useEffect(() => {
      // Para testar com dados estáticos locais
      const localExams = [
        { name: 'exame de sangue', result: 'asigasuifgisaydgfsudgfusagdbufgsadoufvsdufgbshdafvsjahdfv jhysavdfhsavdfhjsavdjhfvsdfhvsadahfvshdfvsahdvfgjsadvfjhsdcjfhsad cjhfgsdchbafcsdnhfcshdfcsahdf csdahbfsd fghsdvfcshdfvhnsdcvfhsdavf hsdvfnhsadvfhbsjd hfsdf .gvfsabv,fd kbnjfdabzsjfdnv bsdufgsdbvdchsydgvusabvkhdsckhv.', date: '2024-05-01' },
        { name: 'Exam 2', result: 'Consectetur adipiscing elit.', date: '2024-05-02' },
        { name: 'Exam 2', result: 'Consectetur adipiscing elit.', date: '2024-05-02' },
        { name: 'Exam 2', result: 'Consectetur adipiscing elit.', date: '2024-05-02' },
        { name: 'Exam 2', result: 'Consectetur adipiscing elit.', date: '2024-05-02' },
        { name: 'Exam 2', result: 'Consectetur adipiscing elit.', date: '2024-05-02' },
        { name: 'Exam 2', result: 'Consectetur adipiscing elit.', date: '2024-05-02' },
        { name: 'Exam 2', result: 'Consectetur adipiscing elit.', date: '2024-05-02' },
        { name: 'Exam 2', result: 'Consectetur adipiscing elit.', date: '2024-05-02' },
        { name: 'Exam 2', result: 'Consectetur adipiscing elit.', date: '2024-05-02' },
        { name: 'Exam 2', result: 'Consectetur adipiscing elit.', date: '2024-05-02' },
        { name: 'Exam 2', result: 'Consectetur adipiscing elit.', date: '2024-05-02' },
        { name: 'Exam 2', result: 'Consectetur adipiscing elit.', date: '2024-05-02' },
        { name: 'Exam 3', result: 'Sed do eiusmod tempor incididunt.', date: '2024-05-03' }
      ];
      setExams(localExams);
  
      // Para usar dados do backend, descomente o código abaixo e comente o código acima
      /*
      axios.get('http://localhost:3000/exams')
        .then(response => {
          setExams(response.data);  // Setting the fetched data to the exams state
        })
        .catch(error => {
          console.error('Error fetching data:', error);
        });
      */
    }, []);
  
    const abrirModal = (nome, result, date) => {
      setModalData({ nome, result, date });
      setModalVisible(true);
    }
  
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
          transparent={true}
          visible={modalVisible}
          onRequestClose={() => {
            setModalVisible(!modalVisible);
          }}
        >
          <View style={styles.centeredView}>
            <View style={styles.modalView}>
              <Text style={styles.modalText}>{modalData.nome}</Text>
              <Text style={styles.modalText}>{modalData.date}</Text>
              <Text style={styles.loremIpsum}>{modalData.result}</Text>
              <Button title="Fechar " onPress={() => setModalVisible(!modalVisible)} color={'#df0000'}/>
            </View>
          </View>
        </Modal>
      </View>
    );
  }