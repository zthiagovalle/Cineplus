import 'package:flutter/material.dart';
import 'package:cineplus/widgets/widget_campoTexto.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login', style: TextStyle(fontSize: 20),),
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column( 
            children: <Widget>[

              Image.asset('assets/CinePlus.png', height: 200, width: 200,),
              
              CampoTexto('Usuario', Icon(Icons.person)),
              
              SizedBox(height: 30,),

              CampoTexto('Senha', Icon(Icons.lock_outline)),

              SizedBox(height: 30,),

              SizedBox(
                      width: 170,
                      height: 40,
                      child: RaisedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/cineplus');
                          },
                          child: Text('Entrar', style: TextStyle(color: Colors.white, fontSize: 18),),
                          color: Colors.deepOrange ,                        
                        ),
                    ),
            ],
          ),
        )
      )
    );
  }
}

