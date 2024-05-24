import { useState } from 'react';
import { View, Text, TouchableOpacity, ScrollView } from 'react-native';

import styles from "./style";

const initialData = [
    { mes: 'janeiro', resultado: '' },
    { mes: 'fevereiro', resultado: '' },
    { mes: 'março', resultado: '' },
    { mes: 'abril', resultado: '' },
];

const Comparar = () => {
    const [data, setData] = useState(initialData);
    const [isSorted, setIsSorted] = useState(false);

    const sortData = () => {
        const sortedData = [...data].sort((a, b) => (a.mes > b.mes ? 1 : -1));
        setData(isSorted ? sortedData.reverse() : sortedData);
        setIsSorted(!isSorted);
    };

    return (
        <ScrollView>
        <View style={styles.container}>
            <View style={styles.row}>
            <Text style={[styles.cell, styles.header, styles.cellLeft]}>exame</Text>
            <Text style={[styles.cell, styles.header]}>resultado</Text>
            </View>
            {data.map((item, index) => (
            <View key={index} style={styles.row}>
                <Text style={[styles.cell, styles.cellLeft]}>{item.mes}</Text>
                <Text style={styles.cell}>{item.resultado}</Text>
            </View>
            ))}
        </View>
        </ScrollView>
    );
}

export default Comparar