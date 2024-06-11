import React, { useState, useEffect } from "react";
import { View, Text, TextInput, TouchableOpacity, StyleSheet } from "react-native";
import AsyncStorage from '@react-native-async-storage/async-storage';
import axios from 'axios';

import styles from "./style";
import config from "../../../config";
import VLibras from './VlibraPerfil'; 

const EditProfile = ({ navigation }) => {
    const [name, setName] = useState('');
    const [cpf, setCpf] = useState('');
    const [weight, setWeight] = useState('');
    const [height, setHeight] = useState('');
    const [bornDate, setBornDate] = useState('');

    useEffect(() => {
        const fetchUserData = async () => {
            try {
                const userId = await AsyncStorage.getItem('userId');
                if (userId) {
                    const response = await axios.get(`${config.apiBaseUrl}/user/${userId}`);
                    const userData = response.data;
                    setName(userData.name);
                    setCpf(userData.cpf);
                    setWeight(userData.weight);
                    setHeight(userData.height);
                    setBornDate(userData.bornDate);
                }
            } catch (error) {
                console.error('Erro ao buscar dados do usuário:', error);
            }
        };

        fetchUserData();
    }, []);

    const handleSave = async () => {
        try {
            const userId = await AsyncStorage.getItem('userId');
            if (userId) {
                await axios.post(`${config.apiBaseUrl}/editProfile/${userId}`, {
                    name,
                    cpf,
                    weight,
                    height,
                    bornDate
                });
                alert('Perfil atualizado com sucesso');
                navigation.navigate('Home');
            }
        } catch (error) {
            console.error('Erro ao atualizar perfil:', error);
            alert('Erro ao atualizar perfil');
        }
    };

    const handleLogoff = async () => {
        try {
            await AsyncStorage.removeItem('userId');
            navigation.navigate('Login');
        } catch (error) {
            console.error('Erro ao fazer logout:', error);
        }
    };

    return (
        <View style={styles.container}>
            <Text style={styles.title}>Editar Perfil</Text>
            <TextInput
                style={styles.input}
                placeholder="Nome"
                value={name}
                onChangeText={setName}
            />
            <TextInput
                style={styles.input}
                placeholder="CPF"
                value={cpf}
                onChangeText={setCpf}
            />
            <TextInput
                style={styles.input}
                placeholder="Peso"
                value={`${weight} kg`}
                onChangeText={setWeight}
            />
            <TextInput
                style={styles.input}
                placeholder="Altura"
                value={`${height} m`}
                onChangeText={setHeight}
            />
            <TextInput
                style={styles.input}
                placeholder="Data de Nascimento"
                value={bornDate}
                onChangeText={setBornDate}
            />
            <TouchableOpacity style={styles.saveButton} onPress={handleSave}>
                <Text style={styles.saveButtonText}>Salvar</Text>
            </TouchableOpacity>

            <TouchableOpacity style={styles.logoffButton} onPress={handleLogoff}>
                <Text style={styles.saveButtonText}>LogOff</Text>
            </TouchableOpacity>
            <VLibras />
        </View>
    );
};

export default EditProfile;
