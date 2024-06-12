import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View, TouchableOpacity } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';
import { LogBox } from 'react-native';

const Stack = createNativeStackNavigator()
import Login from './src/pages/Login';
import Home from './src/pages/Home';
import EditProfile from './src/pages/Perfil';
import Cadastro from './src/pages/Cadastro/Main';
import UserData from './src/pages/Cadastro/UserData'
import Exames from './src/pages/Exames';
import Adicionar from './src/pages/Exames/Adicionar';
import Consultas from './src/pages/Consultas';
import Glicemia from './src/pages/Aferiçoes/Glicemia';
import Pressao from './src/pages/Aferiçoes/Pressao';
import Pesoealtura from './src/pages/Aferiçoes/Pesoealtura';
import Medicamentos from './src/pages/Medicamentos';
import Pdf from './src/pages/Exames/Adicionar/Pdf';
import Manual from './src/pages/Exames/Adicionar/Manual';

export default function App() {
  LogBox.ignoreAllLogs(true);

  return (
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen name='Login' component={Login} />
        <Stack.Screen name='Home' component={Home} options={{ title: 'YE Gestão de Saúde', headerShown: false }}  />
        <Stack.Screen name='Perfil' component={EditProfile} />
        <Stack.Screen name='Cadastro' component={Cadastro}></Stack.Screen>
        <Stack.Screen name='CompleteProfile' component={UserData}></Stack.Screen>
        <Stack.Screen name='Exames' component={Exames}></Stack.Screen>
        <Stack.Screen name='Exames/Adicionar'component={Adicionar} options={{ title: 'Adicionar Exame'}}></Stack.Screen>
        <Stack.Screen name='Consultas' component={Consultas}></Stack.Screen>
        <Stack.Screen name='Medicacoes' component={Medicamentos}></Stack.Screen>
        <Stack.Screen name='IMC' component={Pesoealtura}></Stack.Screen>
        <Stack.Screen name='Pressão' component={Pressao}></Stack.Screen>
        <Stack.Screen name='Glicemia' component={Glicemia}></Stack.Screen>
        <Stack.Screen name='Pdf' component={Pdf}></Stack.Screen>
        <Stack.Screen name='Adicionar' component={Manual}></Stack.Screen>
      </Stack.Navigator>
    </NavigationContainer>
  );
}