import 'package:flutter/material.dart';
import 'package:flutter_qrcode/pages/qrcode_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Página Principal')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navega para a página de geração do QR Code
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const QRCodePage(data: 'https://www.exemplo.com'), // Dados do QR code
              ),
            );
          },
          child: const Text('Gerar QR Code'),
        ),
      ),
    );
  }
}
