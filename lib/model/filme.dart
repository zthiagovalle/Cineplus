import 'package:flutter/material.dart';

class Filme extends StatelessWidget {

  final String foto;
  final String nome;


  Filme(this.nome, this.foto,): super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(foto, height: 150, width: 150,),
        Text(nome),
      ],
    );
  }
}