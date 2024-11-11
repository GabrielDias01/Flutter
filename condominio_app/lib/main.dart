import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart'; // Importa a tela de login

void main() async {
  WidgetsFlutterBinding.ensureInitialized();  // Garante que o Flutter tenha sido inicializado antes de usar Firebase
  await Firebase.initializeApp();  // Inicializa o Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Condomínio App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),  // Inicializa a tela de login
    );
  }
}
