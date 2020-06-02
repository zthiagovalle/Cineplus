import 'package:flutter/material.dart';
import 'package:cineplus/model/filme.dart';


class FilmeWidget extends StatefulWidget {
  @override
  _FilmeWidgetState createState() => _FilmeWidgetState();
}

class _FilmeWidgetState extends State<FilmeWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        new Filme('Capita Marvel', 'assets/cartaz.jpg'),
        new Filme('Guardioes da Galaxia', 'assets/cartaz1.jpg'),
        new Filme('Aquamen', 'assets/cartaz2.jpg'),
        new Filme('Vingadores', 'assets/cartaz3.jpg'),
        new Filme('Spider Man', 'assets/cartaz4.jpg'),
        new Filme('Benom', 'assets/cartaz5.jpg'),
      ],
    );
  }
}