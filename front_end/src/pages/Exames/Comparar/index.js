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
    axios.get('http://localhost:3000/exams')
      .then(response => {
        setExams(response.data);
        setFilteredExams(response.data);
      })
      .catch(error => {
        console.error('Error fetching data:', error);
      });
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
