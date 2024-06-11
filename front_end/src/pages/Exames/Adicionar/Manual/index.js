import React from 'react';
import { View, Text, TouchableOpacity } from 'react-native';
import styles from './style'; 

const Manual = () => {
    const handleButton1Press = () => {

        console.log('Botão 1 pressionado');
    };

    const handleButton2Press = () => {

        console.log('Botão 2 pressionado');
    };

    return (
        <View style={styles.container}>
            <Text style={styles.title}>Escolha a forma de logar</Text>
            <TouchableOpacity style={styles.button} onPress={handleButton1Press}>
                <Text style={styles.buttonText}>Botão 1</Text>
            </TouchableOpacity>
            <TouchableOpacity style={styles.button} onPress={handleButton2Press}>
                <Text style={styles.buttonText}>Botão 2</Text>
            </TouchableOpacity>
        </View>
    );
};

export default Manual;
