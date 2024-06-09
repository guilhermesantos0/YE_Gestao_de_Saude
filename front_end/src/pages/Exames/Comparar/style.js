import { StyleSheet } from 'react-native';

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
    backgroundColor: '#f5f5f5',
  },
  input: {
    height: 60,
    borderColor: '#ddd',
    borderWidth: 1,
    borderRadius: 4,
    marginBottom: 16,
    paddingHorizontal: 8,
    backgroundColor: '#fff',
  },
  sortButton: {
    marginBottom: 10, 
  },
  box: {
    backgroundColor: '#fff',
    padding: 16,
    borderRadius: 4,
    marginBottom: 16,
    shadowColor: '#000',
    shadowOpacity: 0.1,
    shadowRadius: 10,
    shadowOffset: { width: 0, height: 5 },
    elevation: 5,
  },
  boxText: {
    fontSize: 16,
    color: '#333',
    flexShrink: 1,
  },
  // ------------------------------------------------------------
  // Modal
  // ------------------------------------------------------------
  fullScreenView: {
    flex: 1,
    justifyContent: 'flex-start',
    alignItems: 'stretch',
    backgroundColor: '#fff',
    padding: 20,
  },
  modalHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    borderBottomWidth: 1,
    borderBottomColor: '#ddd',
    paddingBottom: 10,
    marginBottom: 20,
  },
  modalTitle: {
    fontSize: 21,
    fontWeight: 'bold',
  },
  modalContent: {
    flex: 1,
  },
  modalLabel: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 5,
  },
  modalText: {
    fontSize: 16,
    marginBottom: 15,
    textAlign: 'left',
  },
  result: {
    fontSize: 16,
    textAlign: 'justify',
    textAlignVertical: 'top',
  },
});

export default styles;
