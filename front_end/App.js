import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View, TouchableOpacity } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';

const Stack = createNativeStackNavigator()


import Home from './src/pages/Home';
import EditProfile from './src/pages/Perfil';
import Cadastro from './src/pages/Cadastro/Main';
import UserData from './src/pages/Cadastro/UserData'
import Exames from './src/pages/Exames';
import Adicionar from './src/pages/Exames/Adicionar';
import Comparar from './src/pages/Exames/Comparar';
import VerExames from './src/pages/Exames/Ver';
import Excluir from './src/pages/Exames/Excluir';
import Consultas from './src/pages/Consultas';
import Medicamentos from './src/pages/Medicamentos';
import M_Adicionar from './src/pages/Medicamentos/Adicionar';

export default function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator>

        <Stack.Screen name='Home' component={Home} options={{ title: 'YE Gestão de Saúde', headerShown: false }}  />
        <Stack.Screen name='Perfil' component={EditProfile} />
        <Stack.Screen name='Cadastro' component={Cadastro}></Stack.Screen>
        <Stack.Screen name='CompleteProfile' component={UserData}></Stack.Screen>
        <Stack.Screen name='Exames' component={Exames}></Stack.Screen>
        <Stack.Screen name='Exames/Adicionar'component={Adicionar} options={{ title: 'Adicionar Exame'}}></Stack.Screen>
        <Stack.Screen name='Exames/Comparar'component={Comparar} options={{ title: 'Comparar Exames'}}></Stack.Screen>
        <Stack.Screen name='Exames/Ver'component={VerExames} options={{ title: 'Últimos Exames'}}></Stack.Screen>
        <Stack.Screen name='Exames/Excluir'component={Excluir} options={{ title: 'Excluir Exame'}}></Stack.Screen>
        <Stack.Screen name='Consultas' component={Consultas}></Stack.Screen>
        <Stack.Screen name='Medicacoes' component={Medicamentos}></Stack.Screen>
        <Stack.Screen name='Medicacoes/Adicionar' component={M_Adicionar}></Stack.Screen>
      </Stack.Navigator>
    </NavigationContainer>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
