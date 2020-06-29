import 'package:flutter/material.dart';

  
showSimpleAlertDialog(BuildContext context, String titulo, String texto) {
   Widget ok = FlatButton(
    child: Text("ok"),
    onPressed:  () {
      Navigator.of(context).pop();
    },
  );
  //configura o AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(titulo),
    content: Text(texto),
    actions: [
      ok
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
