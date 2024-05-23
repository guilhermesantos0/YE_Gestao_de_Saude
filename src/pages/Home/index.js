import { View, Text, Image, TouchableOpacity } from "react-native"
import { useState, useEffect } from "react"

import HomeNavigation from "../../components/HomeNavigation"

import styles from "./style"

const Home = ({ navigation }) => {

    const [pression, setPression] = useState('10/6')
    const [glicemy, setGlicemy] = useState('70 mg/dl a 100 mg/ld')
    const [height, setHeight] = useState(185)
    const [weight, setWeight] = useState(80)
    const [imc, setImc] = useState(null)

    useEffect(() => {
        setImc(weight/(height * height))
    })

    return(
        <View>
            <View style={styles.profile}>
                <Image style={styles.profileImage} source={require('./images/profile.jpg')}></Image>
                <Text style={styles.profileName}>Murilo Orsi</Text>
            </View>

            <View style={styles.examsContainer}>
                <View style={styles.exams}>
                    <View style={styles.exam}>
                        <Text style={styles.examName}>Última aferição de pressão</Text>
                        <View style={styles.examResult}><Text style={styles.examResultText}>{pression}</Text></View>
                    </View>

                    <View style={styles.exam}>
                        <Text style={styles.examName}>Última aferição de glicemia</Text>
                        <View style={styles.examResult}><Text style={styles.examResultText}>{glicemy}</Text></View>
                    </View>

                    <View style={styles.exam}>
                        <Text style={styles.examName}>Última verificação de peso e altura</Text>
                        <View style={styles.examResult}><Text style={styles.examResultText}>{`${weight}Kg\n${height}cm`}</Text></View>
                    </View>

                    <View style={styles.exam}>
                        <Text style={styles.examName}>IMC</Text>
                        <View style={styles.examResult}><Text style={styles.examResultText}>{imc}</Text></View>
                    </View>
                </View>
            </View>

            <HomeNavigation></HomeNavigation>
        </View>
    )
}

export default Home