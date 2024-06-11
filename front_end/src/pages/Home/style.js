import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
    header: {
        flexDirection: 'row',
        justifyContent: 'space-between',
        alignItems: 'center',
        padding: 10,
        backgroundColor: '#f8f8f8',
        marginTop: 20,
        height: 80
    },
    headerTitle: {
        fontSize: 20,
        fontWeight: 'bold',
    },
    profile: {
        width: '100%',
        height: 200,
        marginTop: 50,
        alignItems: 'center',
        justifyContent: 'center'
    },
    profileImage: {
        width: 150,
        height: 150,
        borderRadius: 100,
        borderWidth: 3,
        borderColor: 'black'
    },
    profileName: {
        fontSize: 20,
        marginTop: 20
    },
    examsContainer: {
        width: '100%',
        alignItems: 'center'
    },
    exams: {
        marginTop: 50,
        flexDirection: 'row',
        flexWrap: 'wrap',
        width: '90%',
        height: 300,
        gap: 50,
    },
    exam: {
        width: '40%',
        height: 100,
        justifyContent: 'space-between'
    },
    examName: {
        textAlign: 'center'
    },
    examResult: {
        width: '100%',
        height: 50,
        borderRadius: 20,
        alignItems: 'center',
        justifyContent: 'center',
        backgroundColor: '#789484',
    },
    examResultText: {
        textAlign: 'center',
        color: '#FFF'
    },
});

export default styles;
