import React, { useState } from "react";
import { View, Image, Text, TextInput, TouchableOpacity, Keyboard, Pressable } from "react-native";
import styles from "./style";

const Cadastro = ({ navigation }) => {
    const [email, setEmail] = useState(null);
    const [password, setPassword] = useState(null);
    const [confirmPassword, setConfirmPassword] = useState(null);

    const navigateToCompleteProfile = () => {
        if (password !== confirmPassword) {
            alert('As senhas não coincidem');
            return;
        }

        navigation.navigate('CompleteProfile', { email, password });
    };

    return(
        <Pressable onPress={Keyboard.dismiss} style={styles.container}>
            <View style={styles.imageContainer}>
                <Image source={{ uri: 'https://via.placeholder.com/150' }} style={styles.image}></Image>
            </View>

            <View style={styles.inputContainer}>
                <Text style={styles.inputLabel}>Email</Text>
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
                <Text style={styles.inputLabel}>Confirmar Senha</Text>
                <TextInput
                    placeholder="******"
                    style={styles.input}
                    secureTextEntry={true}
                    onChangeText={setConfirmPassword}
                    value={confirmPassword}
                />
                <TouchableOpacity style={styles.signUpButtonContainer} onPress={navigateToCompleteProfile}>
                    <Text style={styles.signUpButton}>Próximo</Text>
                </TouchableOpacity>
            </View>

            <View style={styles.externalSignUp}>
                <Text>Ou entre com:</Text>
                <View style={styles.externalSignUpContainer}>
                    <TouchableOpacity>
                        <Image style={styles.externalSignUpImage} source={require("../../Login/images/google.png")}></Image>
                    </TouchableOpacity>
                    <TouchableOpacity>
                        <Image style={styles.externalSignUpImage} source={require("../../Login/images/facebook.png")}></Image>
                    </TouchableOpacity>
                </View>
            </View>

            <View style={styles.login}>
                <Text>Já possui uma conta?</Text>
                <TouchableOpacity onPress={() => navigation.navigate('Login')}>
                    <Text style={styles.loginButton}>Entrar</Text>
                </TouchableOpacity>
            </View>
        </Pressable>
    );
}

export default Cadastro;
