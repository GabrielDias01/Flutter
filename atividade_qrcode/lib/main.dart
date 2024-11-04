import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_qrcode/pages/qrcode_flutter.dart';
import 'package:flutter_qrcode/pages/scaner_page.dart';
import 'pages/login_page.dart';
import 'pages/registration_page.dart'; // Importando a página de registro


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
  } catch (e) {
    print("Error initializing Firebase: $e");
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App QR Code',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Define a rota inicial
      routes: {
        '/': (context) => LoginPage(), // Rota para a tela de login
        '/registration': (context) => RegistrationPage(), // Rota para a tela de registro
        '/qr-code': (context) => QRCodePage(data: 'Exemplo de dados'), // Rota para a tela de QR Code
        '/scanner': (context) => ScannerPage(), // Rota para a tela de escaneamento
      },
    );
  }
}
