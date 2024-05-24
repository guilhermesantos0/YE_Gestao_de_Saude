import { useState, useEffect, useRef } from "react";
import { SafeAreaView, View, Text, TouchableOpacity } from "react-native";

import { Camera, CameraView, CameraType } from "expo-camera/legacy";

import Ionicons from '@expo/vector-icons/Ionicons';

import styles from "./style";

const Adicionar = () => {

    const camRef = useRef(null);
    const [type, setType] = useState(CameraType.back);
    const [hasPermission, setHasPermission] = useState(null);
    const [capturedPhoto, setCapturedPhoto] = useState(null);
    const [open, setOpen] = useState(false)

    useEffect(() => {
        (async () => {
          const { status } = await Camera.requestCameraPermissionsAsync();
          setHasPermission(status === "granted");
          setOpen(true)
        })();
    }, [])

    if(hasPermission === null){
    return <View></View>
    }

    if(hasPermission === false){
    return <Text>Acesso Negado</Text>
    }

    async function takePicture(){
        if(camRef){
          const data = await camRef.current.takePictureAsync();
          setCapturedPhoto(data.uri);
          setOpen(true)
        }
    }

    return (
        <SafeAreaView style={styles.container}>
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

                    </View>
            </Camera>
        </SafeAreaView>
    )
}

export default Adicionar