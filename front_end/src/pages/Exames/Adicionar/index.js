import React, { useState, useEffect, useRef } from "react";
import { SafeAreaView, View, Text, TouchableOpacity, Image } from "react-native";
import { Camera } from "expo-camera";
import Ionicons from '@expo/vector-icons/Ionicons';
// import Tesseract from 'tesseract.js';
import styles from "./style";

const Adicionar = () => {
    const camRef = useRef(null);
    const [type, setType] = useState(Camera.Constants.Type.back);
    const [hasPermission, setHasPermission] = useState(null);
    const [capturedPhoto, setCapturedPhoto] = useState(null);
    const [text, setText] = useState('');

    useEffect(() => {
        (async () => {
            const { status } = await Camera.requestCameraPermissionsAsync();
            setHasPermission(status === "granted");
        })();
    }, []);

    if (hasPermission === null) {
        return <View></View>;
    }

    if (hasPermission === false) {
        return <Text>Acesso Negado</Text>;
    }

    async function takePicture() {
        if (camRef.current) {
            const data = await camRef.current.takePictureAsync();
            setCapturedPhoto(data.uri);
            processImage(data.uri);
        }
    }

    async function processImage(uri) {
        Tesseract.recognize(
            uri,
            'eng',
            {
                logger: m => console.log(m),
            }
        ).then(({ data: { text } }) => {
            setText(text);
            sendToServer(text);
        });
    }

    async function sendToServer(extractedText) {
        const response = await fetch('http://seu-servidor/exams', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                name: 'Nome do Exame',  // Extraído ou definido pelo usuário
                result: extractedText,
                date: new Date().toISOString(),
            }),
        });

        if (response.ok) {
            console.log('Exame cadastrado com sucesso!');
        } else {
            console.error('Erro ao cadastrar exame');
        }
    }

    return (
        <SafeAreaView style={styles.container}>
            {capturedPhoto ? (
                <>
                    <Image source={{ uri: capturedPhoto }} style={styles.capturedImage} />
                    <View style={styles.textContainer}>
                        <Text style={styles.extractedText}>{text}</Text>
                    </View>
                </>
            ) : (
                <Camera
                    style={styles.camera}
                    type={type}
                    ref={camRef}>
                    <View style={styles.contentButton}>
                        <TouchableOpacity
                            style={styles.buttonCamera}
                            onPress={takePicture}
                        >
                            <Ionicons name="camera" size={32} color="green" />
                        </TouchableOpacity>
                        <TouchableOpacity
                            style={styles.buttonCamera}
                            onPress={() => {
                                setType(
                                    type === Camera.Constants.Type.back
                                    ? Camera.Constants.Type.front
                                    : Camera.Constants.Type.back
                                );
                            }}
                        >
                            <Ionicons name="camera-reverse" size={32} color="green" />
                        </TouchableOpacity>
                    </View>
                </Camera>
            )}
        </SafeAreaView>
    );
};

export default Adicionar;
