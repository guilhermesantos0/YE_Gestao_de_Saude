import React, { useState } from "react";
import { View, Text, TextInput, TouchableOpacity, Keyboard, Pressable } from "react-native";
import axios from 'axios';
import styles from "./style";

const CompleteProfile = ({ route, navigation }) => {
    const { email, password } = route.params;
    const [name, setName] = useState(null);
    const [cpf, setCpf] = useState(null);
    const [weight, setWeight] = useState(null);
    const [height, setHeight] = useState(null);
    const [bornDate, setBornDate] = useState(null);

    const completeProfile = () => {
        axios.post('http://192.168.0.172:3000/signup', { email, password, name, cpf, weight, height, bornDate })
            .then(response => {
                if (response.status === 200) {
                    console.log('Cadastro completado com sucesso');
                    navigation.navigate('Home');
                }
            })
            .catch(error => {
                console.error('Erro ao completar cadastro:', error);
                alert('Erro ao completar cadastro. Tente novamente.');
            });
    };

    return(
        <Pressable onPress={Keyboard.dismiss} style={styles.container}>
            <View style={styles.inputContainer}>
                <Text style={styles.inputLabel}>Nome</Text>
                <TextInput
                    placeholder="Nome completo"
                    style={styles.input}
                    onChangeText={setName}
                    value={name}
                />
                <Text style={styles.inputLabel}>CPF</Text>
                <TextInput
                    placeholder="CPF"
                    style={styles.input}
                    onChangeText={setCpf}
                    value={cpf}
                />
                <Text style={styles.inputLabel}>Peso</Text>
                <TextInput
                    placeholder="Peso"
                    style={styles.input}
                    onChangeText={setWeight}
                    value={weight}
                />
                <Text style={styles.inputLabel}>Altura</Text>
                <TextInput
                    placeholder="Altura"
                    style={styles.input}
                    onChangeText={setHeight}
                    value={height}
                />
                <Text style={styles.inputLabel}>Data de Nascimento</Text>
                <TextInput
                    placeholder="AAAA-MM-DD"
                    style={styles.input}
                    onChangeText={setBornDate}
                    value={bornDate}
                />
                <TouchableOpacity style={styles.signUpButtonContainer} onPress={completeProfile}>
                    <Text style={styles.signUpButton}>Completar Perfil</Text>
                </TouchableOpacity>
            </View>
        </Pressable>
    );
}

export default CompleteProfile;
