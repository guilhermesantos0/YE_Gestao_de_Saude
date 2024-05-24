import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
    container: {
      flex: 1,
      backgroundColor: '#f5f5f5',
      padding: 20,
    },
    label: {
      fontSize: 16,
      marginVertical: 10,
    },
    input: {
      backgroundColor: '#e0e0e0',
      padding: 10,
      borderRadius: 5,
    },
    footer: {
      flexDirection: 'row',
      justifyContent: 'space-around',
      alignItems: 'center',
      marginTop: 20,
    },
    footerButton: {
      flex: 1,
      alignItems: 'center',
    },
    footerButtonText: {
      fontSize: 18,
      color: 'blue',
    },
});
  
export default styles