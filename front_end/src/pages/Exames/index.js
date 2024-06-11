import { View, Text, TouchableOpacity, Image } from "react-native"

import styles from "./style"

const Exames = ({ navigation }) => {
    return (
        <View>
            <View style={styles.profile}>
                <Image style={styles.profileImage} source={require('./images/profile.jpg')}></Image>
                <Text style={styles.profileName}>Murilo Orsi</Text>
            </View>

            <View style={styles.examsContainer}>
                <View style={styles.exams}>
                    <TouchableOpacity style={styles.button} onPress={() => navigation.navigate('Adicionar/Manual')}><Text style={styles.buttonText}>Adicionar Exame</Text></TouchableOpacity>         
                    <TouchableOpacity style={styles.button} onPress={() => navigation.navigate('Exames/Comparar')}><Text style={styles.buttonText}>Comparar Exame</Text></TouchableOpacity>         
                    <TouchableOpacity style={styles.button} onPress={() => navigation.navigate('Exames/Ver')}><Text style={styles.buttonText}>Últimos Exames</Text></TouchableOpacity>         
                    <TouchableOpacity style={styles.button} onPress={() => navigation.navigate('Exames/Excluir')}><Text style={styles.buttonText}>Excluir Exame</Text></TouchableOpacity>         
                </View>
            </View>
        </View>
    )
}

export default Exames