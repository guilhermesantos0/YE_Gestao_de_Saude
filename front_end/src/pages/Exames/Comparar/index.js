import React, { useEffect, useState } from 'react';
import { View, Text, TouchableOpacity, ScrollView, Modal, Button, TextInput } from 'react-native';
import axios from 'axios';
import styles from "./style";

const HealthManagementScreen = () => {
  const [exams, setExams] = useState([]);
  const [filteredExams, setFilteredExams] = useState([]);
  const [filter, setFilter] = useState('');
  const [sortOrder, setSortOrder] = useState('asc');
  const [modalVisible, setModalVisible] = useState(false);
  const [modalData, setModalData] = useState({});

  useEffect(() => {
    // Dados estáticos locais para teste
    const localExams = [
      { name: 'Exame de Sangue', result: 'Resultado do exame de sangue', date: '2024-05-01' },
      { name: 'Exame de Urina', result: 'Resultado do exame de urina', date: '2024-06-01' },
      { name: 'Exame de Colesterol', result: 'Colesterol Total: 190 mg/dL', date: '2024-04-20' },
      { name: 'Exame de Glicose', result: 'Glicose: 90 mg/dL', date: '2024-03-15' },
      { name: 'Exame de Tireoide', result: 'TSH: 2.5 µIU/mL', date: '2024-02-10' },
      { name: 'Exame de Fezes', result: 'Ausência de parasitas', date: '2024-01-25' },
      { name: 'Exame de Raio-X', result: 'asdbajhsvfdsjhavdfhsvdbfkjasvdkjfsavdhfvsadnhfvsajndv fnhd fjhasvdfjhsavdfhsavdfhbsavdf savdhfv sadgbf sadvf sd csgdcbgsdvchsd agvsad fhvb sdg vsgd v', date: '2024-03-22' },
      { name: 'Exame de ECG', result: 'ECG normal', date: '2024-04-05' },
      { name: 'Exame de Audiometria', result: 'Audição normal', date: '2024-05-10' },
      { name: 'Exame de Função Pulmonar', result: 'Capacidade vital: 4.5L', date: '2024-06-05' }
      // Adicione mais exames conforme necessário
    ];
    setExams(localExams);
    setFilteredExams(localExams);

    // Para usar dados do backend, descomente o código abaixo e comente o código acima
    /*
    axios.get('http://localhost:3000/exams')
      .then(response => {
        setExams(response.data);
        setFilteredExams(response.data);
      })
      .catch(error => {
        console.error('Error fetching data:', error);
      });
    */
  }, []);

  const handleFilterChange = (text) => {
    setFilter(text);
    const filteredData = exams.filter(exam => 
      exam.name.toLowerCase().includes(text.toLowerCase())
    );
    setFilteredExams(filteredData);
  };

  const handleSortChange = () => {
    const sortedData = [...filteredExams].sort((a, b) => {
      if (sortOrder === 'asc') {
        return new Date(a.date) - new Date(b.date);
      } else {
        return new Date(b.date) - new Date(a.date);
      }
    });
    setFilteredExams(sortedData);
    setSortOrder(sortOrder === 'asc' ? 'desc' : 'asc');
  };

  const abrirModal = (name, result, date) => {
    setModalData({ name, result, date });
    setModalVisible(true);
  };

  const renderizarCaixas = () => {
    return filteredExams.map((exam, index) => (
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
      <TextInput
        style={styles.input}
        placeholder="Filtrar exames"
        value={filter}
        onChangeText={handleFilterChange}
      />
      
       <View style={styles.sortButton}>
        <Button title={`Ordenar por data (${sortOrder === 'asc' ? 'Mais antigos' : 'Mais novos'})`} onPress={handleSortChange}  color={'#789484'}/>
      </View>
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
              <Text style={styles.modalText}>{modalData.name}</Text>
              <Text style={styles.modalLabel}>Data:</Text>
              <Text style={styles.modalText}>{modalData.date}</Text>
              <Text style={styles.modalLabel}>Resultado:</Text>
              <Text style={styles.result}>{modalData.result}</Text>
            </View>
          </View>
      </Modal>
    </View>
  );
};

export default HealthManagementScreen;
