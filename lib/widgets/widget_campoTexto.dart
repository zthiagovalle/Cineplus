import 'package:flutter/material.dart';


class CampoTexto extends StatelessWidget {

  final String textoCampo;
  final Icon icone;

  CampoTexto(this.textoCampo, this.icone);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: icone,
          border: OutlineInputBorder(),
          labelText: textoCampo,
        ),
      ),
    );
  }
}