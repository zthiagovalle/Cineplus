import 'package:flutter/material.dart';
import 'package:cineplus/widgets/widget_filme.dart';

class Profile extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  int bottomNavBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[

              Text('Olá (Usuario)', style: TextStyle(fontSize: 40), textAlign: TextAlign.left ,),
              
              SizedBox(height: 50,),
              Text('Minha lista', style: TextStyle(fontSize: 25), textAlign: TextAlign.left ,),
              Row(
                children: <Widget>[
                  FilmeWidget()
                ],
              )
              
             
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black38,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(icon: Icon(Icons.person), color: Colors.deepOrange , 
            onPressed: () { Navigator.pushNamed(context, '/profile'); },),
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