import 'package:cineplus/widgets/simpleAlertDialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cineplus/widgets/widget_campoTexto.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController txtUsuario = TextEditingController();
  TextEditingController txtSenha = TextEditingController();

  //instância do Fire Base
  var db = Firestore.instance;

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
              
              CampoTexto('Usuario', Icons.person,txtUsuario),
              
              SizedBox(height: 30,),

              CampoTexto('Senha', Icons.lock_outline, txtSenha),

              SizedBox(height: 30,),

              SizedBox(
                      width: 170,
                      height: 40,
                      child: RaisedButton(
                          onPressed: (){
                            verificaBanco(txtUsuario.text, txtSenha.text);
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

  verificaBanco(String user, String senha) async {
    DocumentSnapshot doc = await db.collection("usuarios")
    .document(user).get();
    if(user == "" || user == null || senha == "" || senha == ""){
      showSimpleAlertDialog(context, "Campo vazio", "Por favor informe usuário e senha para logar");
    }else{
      if(doc.data == null){      
      showSimpleAlertDialog(context, "Usuário não existe", "Usuário informado não existe em nosso sistema, por favor se cadastre ou digite um usuário válido");
      }else{
      if(senha == doc.data["senha"]){
        Navigator.pushNamed(context, '/cineplus', arguments: user);
      }else{    
        showSimpleAlertDialog(context, "Senha incorreta", "Senha informada está incorreta");
       }
     }
    }       
  }
}

