import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtém o usuário atual autenticado
    final user = FirebaseAuth.instance.currentUser;

    // Verifica se o usuário está autenticado
    if (user == null) {
      // Caso o usuário não esteja autenticado, redireciona para a tela de login
      return Scaffold(
        appBar: AppBar(
          title: Text("Usuário não autenticado"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Redireciona para a tela de login
              Navigator.pushNamed(context, '/login');
            },
            child: Text("Faça login"),
          ),
        ),
      );
    }

    // Se o usuário estiver autenticado, prossegue para gerar o QR Code
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () async {
              // Realiza o logout e redireciona para a tela de login
              await FirebaseAuth.instance.signOut();
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bem-vindo, ${user.email}', // Exibe o email do usuário
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            // Gerando o QR Code com o UID do usuário
            QrImageView(
              data: user.uid, // UID do Firebase
              size: 200,
              backgroundColor: Colors.white,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aqui você pode implementar a lógica de escanear o QR Code
              },
              child: Text("Escanear QR Code"),
            ),
          ],
        ),
      ),
    );
  }
}
