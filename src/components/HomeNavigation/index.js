import { View, Text, TouchableOpacity } from "react-native"
import { useNavigation } from "@react-navigation/native";

import styles from "./style";

const HomeNavigation = () => {
    const navigation = useNavigation();

    return(
        <View style={styles.container}>
            <View style={styles.buttons}>
                <TouchableOpacity onPress={() => navigation.navigate('Exames')} style={styles.button}><Text style={styles.buttonText}>Exames</Text></TouchableOpacity>
                <TouchableOpacity onPress={() => navigation.navigate('Consultas')} style={styles.button}><Text style={styles.buttonText}>Consultas</Text></TouchableOpacity>
                <TouchableOpacity onPress={() => navigation.navigate('Medicacoes')} style={styles.button}><Text style={styles.buttonText}>Medicações</Text></TouchableOpacity>
            </View>
        </View>
    )
}

export default HomeNavigation