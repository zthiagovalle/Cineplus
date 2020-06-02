
import 'package:cineplus/views/about.dart';
import 'package:cineplus/views/cineplus.dart';
import 'package:cineplus/views/profile.dart';
import 'package:cineplus/views/register.dart';
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
}


