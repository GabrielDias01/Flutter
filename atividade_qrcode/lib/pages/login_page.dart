import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Adicione campos de login aqui
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/registration'); // Navega para a tela de registro
              },
              child: Text('Registrar'),
            ),
          ],
        ),
      ),
    );
  }
}
