
import 'package:cineplus/views/about.dart';
import 'package:cineplus/views/cineplus.dart';
import 'package:cineplus/views/profile.dart';
import 'package:cineplus/views/register.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'views/login.dart';
import 'views/welcome.dart';
import 'views/register.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/welcome',
    routes: {
      '/welcome': (context) => Welcome(),
      '/login': (context) => Login(),
      '/register': (context) => Register(),
      '/cineplus': (context) => CinePlus(),
      '/about': (context) => About(),
      '/profile': (context) => Profile(),
    },
  ));
  testeCRUD();
}

void testeCRUD() async{
  final db = Firestore.instance;
  String nome = "alunos";

  DocumentReference id = await db.collection(nome)
  .add(
    {
      "nome":"Karen Almeida",
      "curso":"Ciencia da Computação",
      "ano":2019
    }
  );
  print("ID: " + id.documentID);
}

