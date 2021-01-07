import 'package:flutter/material.dart';
import 'package:Aug18/pages/loginpage.dart'; 
import 'package:Aug18/Pages/mainpage.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes:{
    '/' : (context) => LoginPage(),
    '/home': (context) => MainPage(),
  },
));
