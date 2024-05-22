import React, { useState } from 'react';
import { View, Text, TouchableOpacity, ScrollView, Image } from 'react-native';

import styles from './style';

const initialData = [
    { id: 1, exame: 'exame de sangue' },
    { id: 2, exame: 'exame de pancreas' },
    { id: 3, exame: 'exame cardiografico' },
];
  
const Excluir = () => {
    const [data, setData] = useState(initialData);
    const [selectedId, setSelectedId] = useState(null);

    const handleSelect = (id) => {
        setSelectedId(id);
    };

    const handleDelete = () => {
        if (selectedId !== null) {
        setData(data.filter(item => item.id !== selectedId));
        setSelectedId(null);
        }
    };

    return (
        <View style={styles.container}>
        <Text style={styles.header}>Exames encontrados</Text>
        <ScrollView>
            <View style={styles.table}>
            {data.map((item) => (
                <TouchableOpacity
                key={item.id}
                style={[styles.row, selectedId === item.id && styles.selectedRow]}
                onPress={() => handleSelect(item.id)}
                >
                <Text style={styles.cell}>{item.exame}</Text>
                </TouchableOpacity>
            ))}
            </View>
        </ScrollView>
        <TouchableOpacity style={styles.deleteButton} onPress={handleDelete}>
            {/* <Image source={require('./images/trash.png')} style={styles.deleteIcon} /> */}
            <Text>E</Text>
        </TouchableOpacity>
        </View>
    );
}

export default Excluir