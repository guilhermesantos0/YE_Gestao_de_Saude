import React, { useState, useEffect } from "react";
import { View, Text, TouchableOpacity } from "react-native";
import AsyncStorage from '@react-native-async-storage/async-storage';
import axios from 'axios';
import styles from "./style";
import config from "../../../config";
import VLibras from './VlibraPerfil'; 

const EditProfile = ({ navigation }) => {
    useEffect(() => {
        const fetchUserData = async () => {
            try {
                const userId = await AsyncStorage.getItem('userId');
                if (userId) {
                    const response = await axios.get(`${config.apiBaseUrl}/user/${userId}`);
                    const userData = response.data;
                }
            } catch (error) {
                console.error('Erro ao buscar dados do usuário:', error);
            }
        };

        fetchUserData();
    }, []);

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
            
            <TouchableOpacity style={styles.additionalButton} onPress={() => navigation.navigate('IMC')}>
                <Text style={styles.logoffButtonText}>Adicionar Peso e Altura</Text>
            </TouchableOpacity>
            <TouchableOpacity style={styles.additionalButton} onPress={() => navigation.navigate('Pressão')}>
                <Text style={styles.logoffButtonText}>Adicionar Pressão</Text>
            </TouchableOpacity>
            <TouchableOpacity style={styles.additionalButton} onPress={() => navigation.navigate('Glicemia')}>
                <Text style={styles.logoffButtonText}>Adicionar Glicemia</Text>
            </TouchableOpacity>

            <TouchableOpacity style={styles.logoffButton} onPress={handleLogoff}>
                <Text style={styles.logoffButtonText}>Sair</Text>
            </TouchableOpacity>
            <VLibras />
        </View>
    );
};

export default EditProfile;