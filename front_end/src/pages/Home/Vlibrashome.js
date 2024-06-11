import React from 'react';
import { View, StyleSheet } from 'react-native';
import { WebView } from 'react-native-webview';

const VLibras = () => {
  const htmlContent = `
    <!DOCTYPE html>
    <html lang="pt-BR">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>vLibras</title>
      <style>
        body, html {
          margin: 0;
          padding: 0;
          width: 100%;
          height: 100%;
          overflow: hidden;
          background: transparent;
        }
        #vlibras {
          display: flex;
          justify-content: center;
          align-items: center;
          height: 100%;
          background: transparent;
        }
        .vw-plugin-wrapper {
          display: flex;
          justify-content: center;
          align-items: center;
          height: 100%;
          background: transparent;
        }
      </style>
    </head>
    <body>
      <div id="vlibras">
        <div vw class="enabled">
          <div vw-access-button class="active"></div>
          <div vw-plugin-wrapper>
            <div class="vw-plugin-top-wrapper"></div>
          </div>
        </div>
      </div>
      <script src="https://vlibras.gov.br/app/vlibras-plugin.js"></script>
      <script>
        new window.VLibras.Widget('https://vlibras.gov.br/app');
      </script>
    </body>
    </html>
  `;

  return (
    <View style={styles.container}>
      <WebView
        originWhitelist={['*']}
        source={{ html: htmlContent }}
        style={styles.webview}
      />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    position: 'absolute',
    right: 0,
    top: '50%',
    transform: [{ translateY: -200 }], 
    width: 200,
    height: 400,
    backgroundColor: 'transparent',
    zIndex: 1000,
  },
  webview: {
    flex: 1,
    backgroundColor: 'transparent',
  },
});

export default VLibras;
