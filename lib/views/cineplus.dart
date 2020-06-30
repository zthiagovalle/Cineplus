import 'package:flutter/material.dart';
import 'package:cineplus/widgets/widget_filme.dart';

class CinePlus extends StatefulWidget {
  @override
  _CinePlusState createState() => _CinePlusState();
}

class _CinePlusState extends State<CinePlus> {



  @override
  Widget build(BuildContext context) {
      //Recuperar o ID do Documento
      final String idUsuario = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cine Plus'),
        centerTitle: true,
        backgroundColor: Colors.black12,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: (){Navigator.pushNamed(context, '/login');})
        ],
      ),
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[

              Text('Próximos lançamentos', style: TextStyle(fontSize: 25), textAlign: TextAlign.left ,),

              Row(
                children: <Widget>[
                  FilmeWidget(),
                ],
              ),

              SizedBox(height: 50,),
              
              Text('Melhores Avaliados', style: TextStyle(fontSize: 25), textAlign: TextAlign.left ,),
              
              Row(
                children: <Widget>[
                  FilmeWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black38,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(icon: Icon(Icons.person), color: Colors.deepOrange , 
            onPressed: () { Navigator.pushNamed(context, '/profile', arguments: idUsuario); },),
            title: Text('Perfil', style: TextStyle(color: Colors.white),),
            ),
          BottomNavigationBarItem(
            icon: IconButton(icon: Icon(Icons.home), color: Colors.deepOrange,
            onPressed: () { Navigator.pushNamed(context, '/cineplus'); },),
            title: Text('Home', style: TextStyle(color: Colors.white),),
            ),
          BottomNavigationBarItem(
            icon: IconButton(icon: Icon(Icons.speaker_notes),  color: Colors.deepOrange ,
            onPressed: () { Navigator.pushNamed(context, '/about'); },),
            title: Text('Sobre', style: TextStyle(color: Colors.white),),
            ),
        ] ),
    );
  }
}