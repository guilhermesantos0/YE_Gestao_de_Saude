import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
    backgroundColor: '#f5f5f5',
  },
  examContainer: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    width: '100%',
    height: 100, 
    padding: 10,
    backgroundColor: '#f5f5f5',
    borderWidth: 1,
    borderColor: '#000',
    borderRadius: 5,
    marginVertical: 10,
  },
  examDetails: {
    flex: 1,
  },
  examText: {
    color: '#000',
    textAlign: 'left',
  },
});

export default styles