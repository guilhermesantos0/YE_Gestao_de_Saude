import React, { useState } from 'react';
import { StyleSheet, Text, View, Button, ScrollView } from 'react-native';
import * as DocumentPicker from 'expo-document-picker';
import * as FileSystem from 'expo-file-system';
import { PDFDocument } from 'pdf-lib';

export default function App() {
  const [pdfText, setPdfText] = useState('');

  const handleExtractText = async () => {
    try {
      console.log('Document Picker started');
      const document = await DocumentPicker.getDocumentAsync({
        type: 'application/pdf',
      });

      console.log('Document Picker result:', document);

      if (document.type === 'success') {
        const pdfUri = document.uri;
        console.log('Document selected:', pdfUri);

        const pdfBytes = await FileSystem.readAsStringAsync(pdfUri, {
          encoding: FileSystem.EncodingType.Base64,
        });

        const pdfDoc = await PDFDocument.load(pdfBytes);
        const pages = pdfDoc.getPages();
        let extractedText = '';

        for (let i = 0; i < pages.length; i++) {
          const text = await pages[i].getTextContent();
          extractedText += text.items.map(item => item.str).join(' ');
        }

        setPdfText(extractedText);
      } else {
        console.log('Document selection cancelled or failed');
      }
    } catch (error) {
      console.error('Error extracting text from PDF:', error.message);
    }
  };

  return (
    <View style={styles.container}>
      <Button title="Extract Text" onPress={handleExtractText} />
      <ScrollView style={styles.textContainer}>
        <Text style={styles.text}>Extracted Text:</Text>
        <Text style={styles.extractedText}>{pdfText}</Text>
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
    padding: 16,
  },
  textContainer: {
    marginTop: 20,
    alignSelf: 'stretch',
    paddingHorizontal: 16,
  },
  text: {
    fontWeight: 'bold',
    fontSize: 18,
    textAlign: 'center',
  },
  extractedText: {
    marginTop: 10,
    color: 'black',
    textAlign: 'left',
  },
});
