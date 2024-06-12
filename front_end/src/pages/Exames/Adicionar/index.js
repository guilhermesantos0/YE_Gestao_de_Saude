
import React from 'react';
import { View, Text, TouchableOpacity } from 'react-native';
import styles from './style'; 
import VLibras from './Vlibrasadicionar'; 

const Exames = ({ navigation }) => {
  return (
    <View style={styles.container}>
      <Text style={styles.instructionText}>
        Escolha o método para adicionar:
      </Text>
      <View style={styles.buttonContainer}>
        <TouchableOpacity
          style={styles.button}
          onPress={() => navigation.navigate('Adicionar')}
        >
          <Text style={styles.buttonText}>Adicionar Exame Manualmente</Text>
        </TouchableOpacity>
        <TouchableOpacity
          style={styles.button}
          onPress={() => navigation.navigate('Pdf')}
        >
          <Text style={styles.buttonText}>Adicionar Exame via PDF</Text>
        </TouchableOpacity>
      </View>
      <VLibras />
    </View>
  );
};

export default Exames;

