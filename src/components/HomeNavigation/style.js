import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
    container: {
        width: '100%',
        height: 50,
        alignItems: 'center',
        justifyContent: 'center'
    },
    buttons: {
        flexDirection: 'row',
        width: '100%',
        height: '100%',
        justifyContent: 'space-evenly'
    },
    button: {
        width: 100,
        alignItems: 'center',
        justifyContent: 'center',
        backgroundColor: '#043E1D',
        borderRadius: 5
    },
    buttonText: {
        color: '#FFF'
    }
})

export default styles