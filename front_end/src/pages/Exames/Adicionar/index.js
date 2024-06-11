import React from 'react';
import { View, Text, TouchableOpacity } from 'react-native';
import styles from "./style";

const Adicionar = () => {
    const handleButton1Press = () => {
        console.log('Botão 1 pressionado');
    };

    const handleButton2Press = () => {
        console.log('Botão 2 pressionado');
    };

    return (
        <View style={styles.container}>
            <Text style={styles.title}>Escolha a forma de logar</Text>
            <TouchableOpacity style={styles.button} onPress={() => navigation.navigate('Manual')}>
                <Text style={styles.buttonText}>Adicionar com leitura de PDF</Text>
            </TouchableOpacity>
            <TouchableOpacity style={styles.button} onPress={handleButton2Press}>
                <Text style={styles.buttonText}>Adicionar Manualmente</Text>
            </TouchableOpacity>
        </View>
    );
};

export default Adicionar;
