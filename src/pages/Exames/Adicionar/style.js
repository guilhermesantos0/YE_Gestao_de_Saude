import { StyleSheet } from "react-native"

const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: 'center',
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
})

export default styles