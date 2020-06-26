import 'package:cineplus/widgets/widget_campoTexto.dart';
import 'package:flutter/material.dart';
import 'package:cineplus/widgets/alertDialog.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[

              Image.asset('assets/CinePlus.png', height: 170, width: 170,),

              CampoTexto('Nome', Icon(Icons.person)),

              SizedBox(height: 20,),

              CampoTexto('Usuario', Icon(Icons.person)),

              SizedBox(height: 20,),
              
              CampoTexto('Senha', Icon(Icons.lock_outline)),
              
              SizedBox(height: 20,),
              
              CampoTexto('Confirmar Senha', Icon(Icons.lock_outline)),

              SizedBox(height: 40,),

              SizedBox(
                      width: 170,
                      height: 40,
                      child: RaisedButton(
                          onPressed: (){
                            showAlertDialog(context);
                          },
                          child: Text('Cadastrar', style: TextStyle(color: Colors.white, fontSize: 18),),
                          color: Colors.deepOrange ,                        
                        ),
                    ),

            ],
          ),
        ),
      )
    );
  }
}