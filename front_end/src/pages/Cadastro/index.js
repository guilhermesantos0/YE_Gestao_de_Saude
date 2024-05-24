import { useState } from "react"
import { View, Image, Text, TextInput, TouchableOpacity, Keyboard, Pressable } from "react-native"
import styles from "./style"

const Cadastro = ({ navigation }) => {

    const [email, setEmail] = useState(null)
    const [password, setPassword] = useState(null)

    const checksignUp = () => {
        // nada ainda
    }
    return(
        <Pressable onPress={Keyboard.dismiss} style={styles.container}>
            <View style={styles.imageContainer}>
                <Image source={require("../Login/images/logo.png")} style={styles.image}></Image>
            </View>

            <View style={styles.inputContainer}>
                <Text style={styles.inputLabel}>Login</Text>
                <TextInput
                placeholder="email@exemplo.com"
                style={styles.input}
                onChangeText={setEmail}
                value={email}></TextInput>

                <Text style={styles.inputLabel}>Senha</Text>
                <TextInput
                placeholder="******"
                style={styles.input}
                secureTextEntry={true}
                onChangeText={setPassword}
                value={password}></TextInput>

                <Text style={styles.inputLabel}>Confirmar Senha</Text>
                <TextInput
                placeholder="******"
                style={styles.input}
                secureTextEntry={true}
                onChangeText={setPassword}
                value={password}></TextInput>

                <TouchableOpacity style={styles.signUpButtonContainer} onPress={() => checksignUp()}>
                    <Text style={styles.signUpButton}>Cadastrar</Text>
                </TouchableOpacity>
            </View>

            <View style={styles.externalsignUp}>
                <Text>Ou entre com:</Text>

                <View style={styles.externalsignUpContainer}>
                    <TouchableOpacity>
                        <Image style={styles.externalsignUpImage} source={require("../Login/images/google.png")}></Image>
                    </TouchableOpacity>
                    
                    <TouchableOpacity>
                        <Image style={styles.externalsignUpImage} source={require("../Login/images/facebook.png")}></Image>
                    </TouchableOpacity>
                </View>
            </View>

            <View style={styles.login}>
                <Text>Já possui uma conta?</Text>
                <TouchableOpacity onPress={() => navigation.navigate('Login')}><Text style={styles.loginButton}>Entrar</Text></TouchableOpacity>
            </View>
        </Pressable>
    )
}

export default Cadastro