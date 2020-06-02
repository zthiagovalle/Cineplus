import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
   Widget cancelaButton = FlatButton(
    child: Text("Cancelar"),
    onPressed:  () {
      Navigator.of(context).pop();
    },
  );
  Widget continuaButton = FlatButton(
    child: Text("Continar"),
    onPressed:  () {
      Navigator.of(context).pop();
      Navigator.pushNamed(context, '/login'); 
    },
  );
  //configura o AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Status de Cadastro"),
    content: Text("Conta criada com sucesso"),
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