import { useState } from 'react';
import { View, Text, TouchableOpacity, StyleSheet, ScrollView, Modal, TextInput, Touchable, Pressable } from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';

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

    if(newTitle != '' && newDate != '' && newTime != '' && newPlace != ''){
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
    }

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
            <LinearGradient
            colors={['#B0B0B0bb', '#8E8E8Ebb']}
            start={{x: 0, y: 0}}
            end={{x: 0.5, y: 0.5}}
            locations={[0.4, 1]}
            style={styles.linearGradient}
            >
              <Text style={styles.addButtonText}>Adicionar</Text>
            </LinearGradient>
          </TouchableOpacity>
          <Modal
            animationType="slide"
            transparent={true}
            visible={modalVisible}
            onRequestClose={() => setModalVisible(false)}
          >
            <TouchableOpacity onPress={() => setModalVisible(false)} style={styles.modalContainer}>
              <Pressable style={styles.modalContent}>
                <Text style={styles.modalTitle}>Adicionar Consulta</Text>
                <TextInput
                  style={styles.input}
                  placeholder="Nome"
                  value={newTitle}
                  onChangeText={setNewTitle}
                />
                <TextInput
                  style={styles.input}
                  placeholder="Local"
                  value={newPlace}
                  onChangeText={setNewPlace}
                />
                <TextInput
                  style={styles.input}
                  placeholder="Data"
                  value={newDate}
                  onChangeText={setNewDate}
                />
                <TextInput
                  style={styles.input}
                  placeholder="Hora"
                  value={newTime}
                  onChangeText={setNewTime}
                />
                <TouchableOpacity style={styles.saveButton} onPress={handleAdd}>
                  <Text style={styles.saveButtonText}>Salvar</Text>
                </TouchableOpacity>
              </Pressable>
            </TouchableOpacity>
          </Modal>
        </View>
    );
}

export default Consultas