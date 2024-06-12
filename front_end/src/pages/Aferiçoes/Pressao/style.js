import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
    container: {
      flex: 1,
      backgroundColor: '#f5f5f5',
      paddingHorizontal: 10,
    },
    header: {
      fontSize: 24,
      fontWeight: 'bold',
      textAlign: 'center',
      marginVertical: 10,
    },
    list: {
      flex: 1,
    },
    item: {
      padding: 20,
      marginVertical: 8,
      marginHorizontal: 16,
      borderWidth: 1,
      borderRadius: 5,
      backgroundColor: '#fff',
    },
    title: {
      fontSize: 16,
      fontWeight: 'bold',
    },
    subtitle: {
      fontSize: 14,
      color: 'gray',
    },
    classification: {
      fontSize: 14,
      color: 'blue',
      marginTop: 5,
    },
    footer: {
      flexDirection: 'row',
      justifyContent: 'center',
      alignItems: 'center',
      paddingVertical: 10,
      borderTopWidth: 1,
      backgroundColor: '#fff',
    },
    footerButton: {
      alignItems: 'center',
      padding: 10,
    },
    footerButtonText: {
      fontSize: 32,
    },
    modalView: {
      margin: 20,
      backgroundColor: "white",
      borderRadius: 20,
      padding: 35,
      alignItems: "center",
      shadowColor: "#000",
      shadowOffset: {
        width: 0,
        height: 2
      },
      shadowOpacity: 0.25,
      shadowRadius: 4,
      elevation: 5
    },
    label: {
      fontSize: 16,
      marginVertical: 10,
    },
    input: {
      width: '80%',
      backgroundColor: '#e0e0e0',
      padding: 10,
      borderRadius: 5,
      marginBottom: 10,
    },
    modalFooter: {
      flexDirection: 'row',
      justifyContent: 'space-around',
      width: '100%',
    },
    modalButton: {
      flex: 1,
      alignItems: 'center',
      paddingVertical: 10,
      marginHorizontal: 10,
    },
    modalButtonText: {
      fontSize: 18,
      color: 'blue',
    },
});

export default styles;
