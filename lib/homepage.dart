import 'dart:convert';
import 'user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qr/qr.dart';

class HomePage extends StatelessWidget {
  final _textController = TextEditingController();
  final _textController2 = TextEditingController();
  final _textController3 = TextEditingController();
  final _textController4 = TextEditingController();
  String name = "", lastName = "";
  int? ID, Phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // campos para ingresar los datos
            // campo del nombre
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Ingrese el nombre',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textController.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            //campo del apellido
            TextField(
              controller: _textController2,
              decoration: InputDecoration(
                hintText: 'Ingrese el apellido',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textController2.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            //campo del ID
            TextField(
              controller: _textController3,
              decoration: InputDecoration(
                hintText: 'Ingrese el ID',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textController3.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            //campo del telefono
            TextField(
              controller: _textController4,
              decoration: InputDecoration(
                hintText: 'Ingrese el telefono',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textController4.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // botón para generar el QR
            MaterialButton(
              onPressed: () {
                name = _textController.text;
                lastName = _textController2.text;
                ID = int.parse(_textController3.text);
                Phone = int.parse(_textController4.text);

                // se instancia la clase y se convierte a formato JSON
                // no sé como cambiarle el formato para que aparezcan hacia abajo
                User user = new User();
                user.id = ID;
                user.name = name;
                user.lastName = lastName;
                user.phone = Phone;
                String json = jsonEncode(user);

                // se direcciona a la pagina donde se visualiza el QR
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyQr(json)));

                //se limpian los input
                _textController.clear();
                _textController2.clear();
                _textController3.clear();
                _textController4.clear();
              },
              height: 45,
              color: Colors.blue,
              child: const Text(
                'Generar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
