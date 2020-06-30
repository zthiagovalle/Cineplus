import 'package:flutter/material.dart';


class Filme extends StatelessWidget {

  final String foto;
  final String nome;
  var corEstrela = Colors.grey;

  Filme(this.nome, this.foto,): super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(foto, height: 150, width: 150,),
        Text(nome,style: TextStyle(fontSize: 20, color: Colors.white),),
        IconButton(icon: Icon(Icons.star, size: 35, color: corEstrela), 
        onPressed: (){
          print('Teste');
        })
      ],
    );
  }
}