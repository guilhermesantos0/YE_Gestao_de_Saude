import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
    container: {
      flex: 1,
      padding: 10,
    },
    header: {
      fontWeight: 'bold',
      fontSize: 16,
      textAlign: 'center',
      marginVertical: 10,
    },
    table: {
      flex: 1,
    },
    row: {
      flexDirection: 'row',
      borderBottomWidth: 1,
      borderColor: '#000',
      padding: 10,
    },
    cell: {
      flex: 1,
      textAlign: 'left',
    },
    selectedRow: {
      backgroundColor: '#d3d3d3',
    },
    deleteButton: {
      justifyContent: 'center',
      alignItems: 'center',
      marginVertical: 20,
    },
    deleteIcon: {
      width: 40,
      height: 40,
    },
});

export default styles