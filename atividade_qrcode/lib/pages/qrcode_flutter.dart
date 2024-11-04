import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodePage extends StatelessWidget {
  final String data;

  const QRCodePage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Seu QR Code')),
      body: Center(
        child: QrImageView(
          data: data,
          version: QrVersions.auto,
          size: 200.0,
        ),
      ),
    );
  }
}
