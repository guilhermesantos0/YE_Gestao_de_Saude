import React, { useState, useEffect } from 'react';
import { View, Text, Image, TouchableOpacity, StyleSheet } from 'react-native';
import AsyncStorage from '@react-native-async-storage/async-storage';
import axios from 'axios';

import HomeNavigation from "../../components/HomeNavigation";
import config from "../../../config";
import VLibras from './Vlibrashome';
import styles from "./style";

const Home = ({ navigation }) => {
    const [name, setName] = useState('');
    const [pression, setPression] = useState('10/6');
    const [glicemy, setGlicemy] = useState('70 mg/dl a 100 mg/ld');
    const [height, setHeight] = useState(185);
    const [weight, setWeight] = useState(80);
    const [imc, setImc] = useState(null);

    useEffect(() => {
        const fetchUserData = async () => {
            try {
                const userId = await AsyncStorage.getItem('userId');
                if (userId) {
                    const response = await axios.get(`${config.apiBaseUrl}/user/${userId}`);
                    if (response.data.name) {
                        setName(response.data.name);
                        setHeight(response.data.height);
                        setWeight(response.data.weight);
                    }
                }
            } catch (error) {
                console.error('Erro ao buscar dados do usuário:', error);
            }
        };

        fetchUserData();
    }, []);

    useEffect(() => {
        const calculateIMC = () => {
            if (height && weight) {
                const heightInMeters = height / 100; 
                const calculatedIMC = weight / (heightInMeters * heightInMeters);
                setImc(calculatedIMC.toFixed(2)); 
            }
        };

        calculateIMC();
    }, [height, weight]);

    return (
        <View style={{ flex: 1 }}>
            <View style={styles.header}>
                <Text style={styles.headerTitle}>YE Gestão Saúde</Text>
                <TouchableOpacity style={styles.profileButton} onPress={() => navigation.navigate('Perfil')}>
                    <Text style={styles.profileButtonText}>Editar Perfil</Text>
                </TouchableOpacity>
            </View>

            <View style={styles.profile}>
                <Image style={styles.profileImage} source={require('./images/profile.jpg')}></Image>
                <Text style={styles.profileName}>{name}</Text>
            </View>

            <View style={styles.examsContainer}>
                <View style={styles.exams}>
                    <View style={styles.exam}>
                        <Text style={styles.examName}>Última aferição de pressão</Text>
                        <View style={styles.examResult}><Text style={styles.examResultText}>{pression}</Text></View>
                    </View>

                    <View style={styles.exam}>
                        <Text style={styles.examName}>Última aferição de glicemia</Text>
                        <View style={styles.examResult}><Text style={styles.examResultText}>{glicemy}</Text></View>
                    </View>

                    <View style={styles.exam}>
                        <Text style={styles.examName}>Última verificação de peso e altura</Text>
                        <View style={styles.examResult}><Text style={styles.examResultText}>{`${weight} kg\n${height} cm`}</Text></View>
                    </View>

                    <View style={styles.exam}>
                        <Text style={styles.examName}>IMC</Text>
                        <View style={styles.examResult}><Text style={styles.examResultText}>{imc}</Text></View>
                    </View>
                </View>
            </View>

            <HomeNavigation />
            <VLibras />
        </View>
    );
};

export default Home;
