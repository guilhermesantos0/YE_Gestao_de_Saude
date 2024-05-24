import { View, Text, ScrollView } from "react-native";

import styles from "./style";

const data = [
    { exame: 'testosterona', resultado: '900 ng/dl' },
    { exame: 'glicemia', resultado: '52 ng/dl' },
    { exame: 'gh', resultado: '0,3 ng/dl' },
    { exame: 'plaqueta', resultado: '700.000 mm3' },
    { exame: 'glóbulo vermelho', resultado: '5,0 M mm3' },
    { exame: 'ferro', resultado: '175 µg/dL' },
    { exame: 'b3', resultado: '30,0 µg/L ng/dl' },
];

const VerExames = () => {
    return(
        <ScrollView>
            <View style={styles.container}>
                <View style={styles.row}>
                <Text style={[styles.cell, styles.header, styles.cellLeft]}>exames</Text>
                <Text style={[styles.cell, styles.header]}>resultados</Text>
                </View>

                {data.map((item, index) => (
                    <View key={index} style={styles.row}>
                        <Text style={[styles.cell, styles.cellLeft]}>{item.exame}</Text>
                        <Text style={styles.cell}>{item.resultado}</Text>
                    </View>
                ))}

            </View>
        </ScrollView>
    )
}

export default VerExames