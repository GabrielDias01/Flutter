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
              ),              Text( // Outro widget Text para exibir o contador.
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
