# Introdução ao Flutter e Dart

## 1. Introdução
Flutter é um framework desenvolvido pelo Google, projetado para facilitar a criação de interfaces de usuário ricas e responsivas para aplicações móveis e web. Ele se destaca pela sua popularidade e versatilidade, permitindo que desenvolvedores criem aplicativos com aparência e desempenho nativos em diferentes plataformas.

## 2. Dart: A Linguagem do Flutter
Dart é a linguagem de programação principal utilizada no Flutter. Criada para ser fácil de aprender e usar, Dart proporciona um design eficiente que é fundamental para recursos como o hot reload, permitindo aos desenvolvedores visualizar mudanças em tempo real enquanto codificam. Isso torna o desenvolvimento muito mais dinâmico e produtivo.

---

## Estrutura do Tutorial

### 1. Download e Instalação do SDK Flutter
- **Acesse o site**: Navegue até [flutter.dev](https://flutter.dev).
- **Baixe o SDK**: Escolha a versão adequada para seu sistema operacional (Windows, macOS, Linux).
- **Extraia o arquivo**: Descompacte o SDK em um diretório acessível, como `C:\src\flutter` no Windows.

### 2. Instalação do Android Studio/VS Code
- **Android Studio**:
  - **Download**: Baixe e instale o [Android Studio](https://developer.android.com/studio?hl=pt-br).
  - **Plugins**: Vá em "Preferences" (ou "Settings") e instale os plugins "Flutter" e "Dart".
  
- **VS Code**:
  - **Download**: Baixe e instale o [VS Code](https://code.visualstudio.com).
  - **Extensões**: Acesse a aba de extensões, busque por "Flutter" e instale a extensão.

### 3. Configuração de Emuladores/Simuladores
- **Emulador Android**:
  - Abra o Android Studio e acesse o AVD Manager.
  - Crie um novo dispositivo virtual e inicie o emulador.
  
- **Simulador iOS (macOS)**:
  - Abra o Xcode e inicie o simulador.

### 4. Teste de Instalação com um Projeto Básico
- **Criação do Projeto**:
  - No terminal ou interface do Android Studio/VS Code, execute: `flutter create nome_do_projeto`.
  
- **Abertura e Execução**:
  - Navegue até a pasta do projeto no editor e execute: `flutter run`.
  - Demonstre o aplicativo básico gerado, explicando rapidamente o que o código padrão realiza.
  
- **Configuração do Git**:
  - Execute: `git config --global --add safe.directory C:\src\flutter`.

### 5. Conclusão
- **Recapitulação**: Resuma os passos realizados durante o tutorial.
- **Próximos passos**: Incentive a audiência a explorar mais sobre Flutter e Dart, indicando recursos adicionais e documentação para aprofundamento.

---

## Código Usado no Vídeo

```dart
import 'package:flutter/material.dart'; // Importa o pacote de widgets do Flutter.

void main() {
  runApp(ContadorApp()); // A função main() inicia o aplicativo e chama o widget ContadorApp.
}

class ContadorApp extends StatefulWidget { // Define um widget com estado, permitindo alterações dinâmicas.
  @override
  _ContadorAppState createState() => _ContadorAppState(); // Cria o estado associado ao widget.
}

class _ContadorAppState extends State<ContadorApp> { // Classe que gerencia o estado do ContadorApp.
  int _contador = 0; // Inicializa a variável _contador com zero.

  void _incrementarContador() { // Método para incrementar o contador.
    setState(() { // Notifica o Flutter que o estado mudou e que deve re-renderizar o widget.
      _contador++; // Incrementa o valor de _contador em 1.
    });
  }

  @override
  Widget build(BuildContext context) { // Método que constrói a interface do usuário.
    return MaterialApp( // Retorna um widget MaterialApp, que é a estrutura básica do app.
      home: Scaffold( // Utiliza Scaffold para criar uma estrutura de página básica.
        appBar: AppBar( // Cria uma AppBar na parte superior da tela.
          title: Text('Contador Simples'), // Define o título da AppBar.
        ),
        body: Center( // Centraliza o conteúdo do corpo da página.
          child: Column( // Utiliza um Column para empilhar widgets verticalmente.
            mainAxisAlignment: MainAxisAlignment.center, // Centraliza os widgets na coluna.
            children: <Widget>[ // Lista de widgets filhos.
              Text( // Um widget Text para exibir uma string.
                'Você pressionou o botão:', // Texto fixo.
              ),
              Text( // Outro widget Text para exibir o contador.
                '$_contador', // Exibe o valor atual de _contador.
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold), // Estiliza o texto.
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton( // Adiciona um botão flutuante.
          onPressed: _incrementarContador, // Define a ação do botão (incrementar contador).
          tooltip: 'Incrementar', // Texto descritivo para o botão.
          child: Icon(Icons.add), // Ícone do botão (símbolo de adição).
        ),
      ),
    );
  }
}
