import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
    backgroundColor: '#f5f5f5',
  },
  result: {
    fontSize: 16,
    textAlign: 'justify',
    textAlignVertical: 'top',
  },
  line: {
    alignItems: 'center',
    marginTop: 20,
  },
  title: {
    fontSize: 20,
  },
  profile: {
    width: '100%',
    height: 200,
    marginTop: 50,
    alignItems: 'center',
    justifyContent: 'center',
  },
  profileImage: {
    width: 150,
    height: 150,
    borderRadius: 100,
    borderWidth: 3,
    borderColor: 'black',
  },
  profileName: {
    fontSize: 20,
    marginTop: 10,

  },
  examsContainer: {
    width: '100%',
    alignItems: 'center',
  },
  exams: {
    marginTop: 100,
    flexDirection: 'row',
    flexWrap: 'wrap',
    width: '90%',
    height: 300,
    gap: 30,
    justifyContent: 'center',
  },
  button: {
    width: '40%',
    height: 70,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#789484',
    borderRadius: 10,
  },
  buttonText: {
    color: '#FFF',
  },
});

export default styles;
