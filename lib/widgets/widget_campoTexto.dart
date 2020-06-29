import 'package:flutter/material.dart';


class CampoTexto extends StatelessWidget {

  final String textoCampo;
  var icone;
  var controle;
  bool obscure;
  CampoTexto(this.textoCampo, this.icone, this.controle);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controle,
        obscureText: verificaSeECampoSenha(textoCampo),
        decoration: InputDecoration(
          fillColor: Colors.black12,
          prefixIcon: Icon(icone, color: Colors.deepOrange,),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(color: Colors.white),
          ),
          filled: true,
          labelText: textoCampo,
          labelStyle: TextStyle(
            color: Colors.yellow
          )
        ),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
  
  bool verificaSeECampoSenha(String texto){
    if(textoCampo == "Senha" || textoCampo == "Confirmar Senha"){
      return true;
    }else{
      return false;
    }
  }
}