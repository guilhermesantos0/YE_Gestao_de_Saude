import { useState } from "react"
import { TouchableOpacity, Text, Image, View, TextInput } from "react-native"
import { SvgUri } from "react-native-svg"

import styles from "./style"

const Login = ({ navigation }) => {

    const [email, setEmail] = useState(null)
    const [password, setPassword] = useState(null)

    const checkLogin = () => {
        console.log(email)
        navigation.navigate('Consultas')
    }

    return(
        <View style={styles.container}>
            <View style={styles.imageContainer}>
                <Image source={require("./images/logo.png")} style={styles.image}></Image>
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

                <TouchableOpacity style={styles.loginButtonContainer} onPress={() => checkLogin()}>
                    <Text style={styles.loginButton}>Login</Text>
                </TouchableOpacity>
            </View>

            <View style={styles.externalLogin}>
                <Text>Ou entre com:</Text>

                <View style={styles.externalLoginContainer}>
                    <TouchableOpacity>
                        <Image style={styles.externalLoginImage} source={require("./images/google.png")}></Image>
                    </TouchableOpacity>
                    
                    <TouchableOpacity>
                        <Image style={styles.externalLoginImage} source={require("./images/facebook.png")}></Image>
                    </TouchableOpacity>
                </View>
            </View>

            <View style={styles.signUp}>
                <Text>Ainda não possui conta?</Text>
                <TouchableOpacity onPress={() => navigation.navigate('Cadastro')}><Text style={styles.signUpButton}>Cadastre-se</Text></TouchableOpacity>
            </View>

            {/* <TouchableOpacity onPress={() => navigation.navigate('SecondScreen')}>
                <Text>Ir para Segunda Página</Text>
            </TouchableOpacity> */}
        </View>
    )
}

export default Login