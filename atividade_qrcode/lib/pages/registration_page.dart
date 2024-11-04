import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_qrcode/pages/qrcode_flutter.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  void _register() async {
    final name = _nameController.text;
    final email = _emailController.text;

    // Salvar no Firestore
    await FirebaseFirestore.instance.collection('users').add({
      'name': name,
      'email': email,
    });

    // Gerar QR code (exemplo de dados)
    final qrData = 'user_id_or_token'; // Substitua por um ID único

    // Navegar para a página de QR Code
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QRCodePage(data: qrData),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _nameController, decoration: InputDecoration(labelText: 'Nome')),
            TextField(controller: _emailController, decoration: InputDecoration(labelText: 'E-mail')),
            ElevatedButton(onPressed: _register, child: Text('Cadastrar')),
          ],
        ),
      ),
    );
  }
}
