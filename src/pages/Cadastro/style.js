import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
    container: {
        flex: 1,
        alignItems: "center"
    },
    imageContainer: {
        marginTop: 30
    },
    image: {
        width: 200,
        height: 200    
    },
    inputContainer: {
        marginTop: 10,
        width: '80%',
        height:330
    },
    inputLabel: {
        fontSize: 20,
        marginTop: 10
    },
    input: {
        width: '100%',
        height: 40,
        backgroundColor: '#d1d1d1',
        borderRadius: 20,
        paddingLeft: 10,
        paddingRight: 10,
    },
    signUpButtonContainer: {
        marginTop: 35
    },
    signUpButton: {
        width: '100%',
        height: 40,
        backgroundColor: '#1040ff',
        borderRadius: 30,
        paddingLeft: 20,
        paddingTop: 8,
        color: '#fff'
    },
    externalsignUp: {
        width: '80%',
        height: 100,
        textAlign: 'center',
        alignItems: 'center',
        justifyContent: 'space-between'
    },
    externalsignUpContainer: {
        flexDirection: 'row',
        width: '80%',
        justifyContent: 'space-evenly'
    },
    externalsignUpImage: {
        width: 50,
        height: 50
    },
    login: {
        marginTop: 30
    },
    loginButton: {
        color: '#1040ff'
    }
})

export default styles