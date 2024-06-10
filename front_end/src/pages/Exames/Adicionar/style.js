import { StyleSheet } from "react-native"

const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: '#fff'
    },
    camera: {
        width: "100%",
        height: "90%"
    },
    contentButton: {
        flex: 1,
        backgroundColor: "transparent",
        flexDirection: "row",
        justifyContent: 'center',
        alignItems: 'flex-end'
    },
    buttonCamera: {
        justifyContent: "center",
        alignItems: "center",
        backgroundColor: "white",
        margin: 20,
        height: 50,
        width: 50,
        borderRadius: 50
    },
    capturedImage: {
        flex: 1,
        width: "100%",
    },
    textContainer: {
        position: 'absolute',
        bottom: 0,
        backgroundColor: 'rgba(0, 0, 0, 0.5)',
        width: '100%',
        padding: 10
    },
    extractedText: {
        color: 'white',
        fontSize: 16,
        textAlign: 'center'
    }
});

export default styles;
