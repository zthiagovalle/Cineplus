import 'package:cineplus/model/usuario.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//instância do Fire Base
  var db = Firestore.instance;
  
showAlertDialog(BuildContext context, String nome, String usuario, String senha) {
   Widget cancelaButton = FlatButton(
    child: Text("Não"),
    onPressed:  () {
      Navigator.of(context).pop();
    },
  );
  Widget continuaButton = FlatButton(
    child: Text("Sim"),
    onPressed:  () {
      cadastrar(context,
        Usuario(nome,usuario,senha));
      Navigator.of(context).pop();
      Navigator.pushNamed(context, '/login'); 
    },
  );
  //configura o AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Status de Cadastro"),
    content: Text("Deseja realmente criar uma conta?"),
    actions: [
      cancelaButton,
      continuaButton,
    ],
  );
  //exibe o diálogo
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

void cadastrar(BuildContext context, Usuario usuario) async{
    await db.collection("usuarios").document(usuario.usuario)
    .setData({
      "nome": usuario.nome,
      "usuario":usuario.usuario,
      "senha": usuario.senha
    });
  }
