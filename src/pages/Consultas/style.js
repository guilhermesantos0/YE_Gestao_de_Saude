import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
    container: {
      flex: 1,
      paddingBottom: 70, // Adiciona espaço no final para o botão "Adicionar"
    },
    scrollView: {
      flex: 1,
    },
    itemContainer: {
      marginBottom: 10,
      borderRadius: 5,
      overflow: 'hidden',
    },
    item: {
      backgroundColor: '#d3d3d3',
      padding: 10,
      borderRadius: 5,
    },
    itemHeader: {
      flexDirection: 'row',
      justifyContent: 'space-between',
      alignItems: 'center',
    },
    itemTitle: {
      fontWeight: 'bold',
      flex: 1,
    },
    itemDate: {
      marginLeft: 10,
    },
    itemToggle: {
      marginLeft: 10,
    },
    expandedContent: {
      backgroundColor: '#e0e0e0',
      padding: 10,
      borderTopWidth: 1,
      borderColor: '#c0c0c0',
    },
    itemDetails: {
      marginBottom: 10,
    },
    deleteButton: {
      backgroundColor: 'red',
      padding: 10,
      borderRadius: 5,
      alignItems: 'center',
    },
    deleteButtonText: {
      color: 'white',
      fontWeight: 'bold',
    },
    addButton: {
      position: 'absolute',
      bottom: 10,
      left: 10,
      right: 10,
      backgroundColor: 'green',
      padding: 15,
      borderRadius: 5,
      alignItems: 'center',
    },
    addButtonText: {
      color: 'white',
      fontWeight: 'bold',
    },
    modalContainer: {
      flex: 1,
      justifyContent: 'center',
      alignItems: 'center',
      backgroundColor: 'rgba(0, 0, 0, 0.5)',
    },
    modalContent: {
      width: '80%',
      backgroundColor: 'white',
      padding: 20,
      borderRadius: 10,
      alignItems: 'center',
    },
    modalTitle: {
      fontSize: 20,
      marginBottom: 20,
    },
    input: {
      width: '100%',
      height: 40,
      borderColor: 'gray',
      borderWidth: 1,
      marginBottom: 10,
      paddingLeft: 10,
    },
    saveButton: {
      backgroundColor: 'blue',
      padding: 10,
      borderRadius: 5,
      alignItems: 'center',
      width: '100%',
    },
    saveButtonText: {
      color: 'white',
      fontWeight: 'bold',
    },
});

export default styles