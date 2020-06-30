import 'package:flutter/material.dart';


class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      //Recuperar o ID do Documento
      final String idUsuario = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: const EdgeInsets.all(1),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Image.asset('assets/about.png', height: 500, width: 500,),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black38,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(icon: Icon(Icons.person), color: Colors.deepOrange , 
            onPressed: () {  Navigator.pushNamed(context, '/profile',arguments: idUsuario);},),
            title: Text('Perfil', style: TextStyle(color: Colors.white),),
            ),
          BottomNavigationBarItem(
            icon: IconButton(icon: Icon(Icons.home), color: Colors.deepOrange,
            onPressed: () { Navigator.pushNamed(context, '/cineplus',arguments: idUsuario); },),
            title: Text('Home', style: TextStyle(color: Colors.white),),
            ),
          BottomNavigationBarItem(
            icon: IconButton(icon: Icon(Icons.speaker_notes),  color: Colors.deepOrange ,
            onPressed: () { Navigator.pushNamed(context, '/about',arguments: idUsuario); },),
            title: Text('Sobre', style: TextStyle(color: Colors.white),),
            ),
        ] ),
    );
  }
}