
import 'package:cineplus/widgets/simpleAlertDialog.dart';
import 'package:cineplus/widgets/widget_campoTexto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cineplus/widgets/alertDialog.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  //Controles para os campos de texto
  TextEditingController txtUsuario = TextEditingController();
  TextEditingController txtNome = TextEditingController();
  TextEditingController txtSenha = TextEditingController();
  TextEditingController txtSenhaConf = TextEditingController();
  
  //instância do Fire Base
  var db = Firestore.instance;

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

              CampoTexto('Nome', Icons.person, txtNome),

              SizedBox(height: 20,),

              CampoTexto('Usuario', Icons.person, txtUsuario),

              SizedBox(height: 20,),
              
              CampoTexto('Senha', Icons.lock_outline, txtSenha),
              
              SizedBox(height: 20,),
              
              CampoTexto('Confirmar Senha', Icons.lock_outline, txtSenhaConf),

              SizedBox(height: 40,),

              SizedBox(
                      width: 170,
                      height: 40,
                      child: RaisedButton(
                          onPressed: (){
                            if(verificaCampoVazio(txtNome.text, txtUsuario.text, txtSenha.text, txtSenhaConf.text) == 1){
                              print("campo ok");
                              if(verificaSenha(txtSenha.text, txtSenhaConf.text) == 1){
                                print("senhas ok");
                                verificaUserBanco(txtUsuario.text);
                              }
                            }
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

  int verificaCampoVazio(String nome, String user, String senha, String senha2){
    if(nome == "" || user == "" || senha == "" || senha2 == ""
    || nome == null || user == null || senha == null || senha2 == null){
      showSimpleAlertDialog(context, "Campo vazio", "Algum campo está vazio, complete todos para se cadastrar.");
      return 0;
    }else{
      return 1;
    }
  }

  int verificaSenha(String senha1, String senha2){
    if(senha1 != senha2){
      showSimpleAlertDialog(context, "Senha não coincide", "As Senhas informadas não estão iguais.");
      return 0;
    }else{
      return 1;
    }
  }

   verificaUserBanco(String user) async{
    DocumentSnapshot doc = await db.collection("usuarios")
    .document(user).get();
    if(doc.data == null){
      showAlertDialog(context,txtNome.text,txtUsuario.text,txtSenha.text);
    }else{
      showSimpleAlertDialog(context, "Usuário já existente", "Usuário informado já está cadastrado em nosso serviço, por favor informe um usuário diferente.");
    }
  }
}