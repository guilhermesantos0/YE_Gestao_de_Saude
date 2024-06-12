import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 19,
    backgroundColor: '#f5f5f5',
    justifyContent: 'center',
    alignItems: 'center',
  },
  instructionText: {
    fontSize: 19,  
    textAlign: 'center',
    marginBottom: 70,  
  },
  buttonContainer: {
    width: '100%',
    justifyContent: 'center',
    alignItems: 'center',
  },
  button: {
    width: '100%',  
    height: 80,  
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#789484',
    borderRadius: 10,
    marginBottom: 20,  
  },
  buttonText: {
    alignItems: 'center',
    fontSize: 15,  
    textAlign: 'center', 
    textAlignVertical: 'center',
    color: '#FFF',
  },
});

export default styles;
