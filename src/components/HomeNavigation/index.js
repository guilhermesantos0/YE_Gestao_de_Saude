import { View, Text, TouchableOpacity } from "react-native"

import styles from "./style";

const HomeNavigation = () => {
    return(
        <View style={styles.container}>
            <View style={styles.buttons}>
                <TouchableOpacity style={styles.button}><Text>Exames</Text></TouchableOpacity>
                <TouchableOpacity style={styles.button}><Text>Consultas</Text></TouchableOpacity>
                <TouchableOpacity style={styles.button}><Text>Medicações</Text></TouchableOpacity>
            </View>
        </View>
    )
}

export default HomeNavigation