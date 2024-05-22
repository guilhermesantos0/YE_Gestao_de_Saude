import { useState } from 'react';
import { View, Text, TouchableOpacity, StyleSheet, ScrollView, Modal, TextInput } from 'react-native';

import styles from './style';

const initialData = [
    { id: 1, title: 'Doutor consulta', date: '10/07/2023', time: '11:12', place: 'Hospital São Camilo' },
    { id: 2, title: 'oculista', date: '11/12/2022', time: '11:12', place: 'Hospital São Camilo' },
    { id: 3, title: 'cirurgia pai', date: '11/12/2023', time: '11:12', place: 'Hospital São Camilo' },
];

const Consultas = ({ navigation }) => {
    const [data, setData] = useState(initialData);
  const [expandedId, setExpandedId] = useState(null);
  const [modalVisible, setModalVisible] = useState(false);
  const [newTitle, setNewTitle] = useState('');
  const [newDate, setNewDate] = useState('');
  const [newTime, setNewTime] = useState('');
  const [newPlace, setNewPlace] = useState('');

  const toggleExpand = (id) => {
    setExpandedId(expandedId === id ? null : id);
  };

  const handleDelete = (id) => {
    setData(data.filter(item => item.id !== id));
    setExpandedId(null);
  };

  const handleAdd = () => {
    const newItem = {
      id: data.length + 1,
      title: newTitle,
      date: newDate,
      time: newTime,
      place: newPlace,
    };
    setData([...data, newItem]);
    setModalVisible(false);
    setNewTitle('');
    setNewDate('');
    setNewTime('');
    setNewPlace('');
  };
  
    return (
        <View style={styles.container}>
          <ScrollView style={styles.scrollView}>
            {data.map((item) => (
              <View key={item.id} style={styles.itemContainer}>
                <TouchableOpacity onPress={() => toggleExpand(item.id)} style={styles.item}>
                  <View style={styles.itemHeader}>
                    <Text style={styles.itemTitle}>{item.title}</Text>
                    <Text style={styles.itemDate}>{item.date}</Text>
                    <Text style={styles.itemToggle}>{expandedId === item.id ? '▲' : '▼'}</Text>
                  </View>
                </TouchableOpacity>
                {expandedId === item.id && (
                  <View style={styles.expandedContent}>
                    <Text style={styles.itemDetails}>{`${item.date} - ${item.time}\n${item.place}`}</Text>
                    <TouchableOpacity onPress={() => handleDelete(item.id)} style={styles.deleteButton}>
                      <Text style={styles.deleteButtonText}>Deletar</Text>
                    </TouchableOpacity>
                  </View>
                )}
              </View>
            ))}
          </ScrollView>
          <TouchableOpacity style={styles.addButton} onPress={() => setModalVisible(true)}>
            <Text style={styles.addButtonText}>Adicionar</Text>
          </TouchableOpacity>
          <Modal
            animationType="slide"
            transparent={true}
            visible={modalVisible}
            onRequestClose={() => setModalVisible(false)}
          >
            <View style={styles.modalContainer}>
              <View style={styles.modalContent}>
                <Text style={styles.modalTitle}>Adicionar Consulta</Text>
                <Text>Digite o nome:</Text>
                <TextInput
                  style={styles.input}
                  placeholder="Escreva aqui"
                  value={newTitle}
                  onChangeText={setNewTitle}
                />
                <Text>Digite o local:</Text>
                <TextInput
                  style={styles.input}
                  placeholder="Escreva aqui"
                  value={newPlace}
                  onChangeText={setNewPlace}
                />
                <Text>Digite a data e hora:</Text>
                <TextInput
                  style={styles.input}
                  placeholder="Escreva aqui"
                  value={newDate}
                  onChangeText={setNewDate}
                />
                <TextInput
                  style={styles.input}
                  placeholder="Escreva aqui"
                  value={newTime}
                  onChangeText={setNewTime}
                />
                <TouchableOpacity style={styles.saveButton} onPress={handleAdd}>
                  <Text style={styles.saveButtonText}>Salvar</Text>
                </TouchableOpacity>
              </View>
            </View>
          </Modal>
        </View>
    );
}

export default Consultas