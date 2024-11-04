import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScannerPage extends StatelessWidget {
  Future<void> _scanQR(BuildContext context) async {
    String result = await FlutterBarcodeScanner.scanBarcode(
      "#ff6666", "Cancelar", false, ScanMode.QR);
      
    // Aqui você pode validar o QR code escaneado no Firestore
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Escanear QR Code')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _scanQR(context),
          child: Text('Escanear QR Code'),
        ),
      ),
    );
  }
}
