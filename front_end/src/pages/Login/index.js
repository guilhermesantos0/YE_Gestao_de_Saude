import React, { useState } from "react";
import { TouchableOpacity, Text, Image, View, TextInput, Keyboard, Pressable, Alert } from "react-native";
import axios from 'axios';
import AsyncStorage from '@react-native-async-storage/async-storage';

import styles from "./style";

import config from "../../../config";

const Login = ({ navigation }) => {
    const [email, setEmail] = useState(null);
    const [password, setPassword] = useState(null);

    const checkLogin = async () => {
        try {
            const response = await axios.post(`${config.apiBaseUrl}/login`, { email, password });
            if (response.data.userId) {
                await AsyncStorage.setItem('userId', response.data.userId.toString());
                navigation.navigate('Home');
            }else{
                Alert.alert('Erro', 'Erro ao fazer login');
            }
        } catch (error) {
            Alert.alert('Erro', 'Erro ao fazer login');
        }
    };

    return(
        <Pressable onPress={Keyboard.dismiss} style={styles.container}>
            <View style={styles.imageContainer}>
                <Image source={require("./images/logo.png")} style={styles.image}></Image>
            </View>

            <View style={styles.inputContainer}>
                <Text style={styles.inputLabel}>Login</Text>
                <TextInput
                    placeholder="email@exemplo.com"
                    style={styles.input}
                    onChangeText={setEmail}
                    value={email}
                />
                <Text style={styles.inputLabel}>Senha</Text>
                <TextInput
                    placeholder="******"
                    style={styles.input}
                    secureTextEntry={true}
                    onChangeText={setPassword}
                    value={password}
                />
                <TouchableOpacity style={styles.loginButtonContainer} onPress={checkLogin}>
                    <Text style={styles.loginButton}>Login</Text>
                </TouchableOpacity>
            </View>

            <View style={styles.externalLogin}>
                <Text>Ou entre com:</Text>
                <View style={styles.externalLoginContainer}>
                    <TouchableOpacity>
                        <Image style={styles.externalLoginImage} source={require("./images/google.png")}></Image>
                    </TouchableOpacity>
                </View>
            </View>

            <View style={styles.signUp}>
                <Text>Ainda não possui conta?</Text>
                <TouchableOpacity onPress={() => navigation.navigate('Cadastro')}>
                    <Text style={styles.signUpButton}>Cadastre-se</Text>
                </TouchableOpacity>
            </View>
        </Pressable>
    );
};

export default Login;
