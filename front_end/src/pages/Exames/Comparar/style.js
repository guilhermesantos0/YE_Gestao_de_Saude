import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
    container: {
      flex: 1,
      padding: 10,
    },
    row: {
      flexDirection: 'row',
      borderBottomWidth: 1,
      borderColor: '#000',
    },
    cell: {
      flex: 1,
      padding: 10,
      textAlign: 'left',
      borderColor: '#000',
    },
    cellLeft: {
        borderRightWidth: 1,
    },
    header: {
      fontWeight: 'bold',
      backgroundColor: '#d3d3d3',
      alignItems: 'center',
      justifyContent: 'center',
    },
});

export default styles