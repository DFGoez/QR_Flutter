import 'dart:convert';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter_qr/homepage.dart';
import 'package:flutter/material.dart';

class MyQr extends StatelessWidget {
  // se recibe la información mandada desde el formulario y se almacena en la variable
  final String codigo;
  const MyQr(this.codigo, {Key, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Codigo QR"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // se crea la imagen, se le pueden cambiar los colores y el tamaño
            // la linea 25 es algo se seguridad para que el QR no quede con tanto espacio en blanco evitando que se pueda modificar facilmente
            QrImage(
              data: codigo,
              size: 300,
              errorCorrectionLevel: QrErrorCorrectLevel.Q,
            ),
          ],
        ),
      ),
    );
  }
}

// Martin no supe como encriptar la informacion y el formato del Json esta horizontal en vez de vertical, 
// vi varios videos pero la verdad no los entendí
