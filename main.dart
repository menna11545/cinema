// ignore: avoid_web_libraries_in_flutter

// ignore_for_file: prefer_const_constructors, unused_import

import 'package:cinemaa/Addfilm.dart';
import 'package:cinemaa/pages/AdminHome.dart';
import 'package:cinemaa/pages/Apdatemovies.dart';
import 'package:cinemaa/pages/Credit_Card_Page.dart';
import 'package:cinemaa/pages/Deletemovies.dart';
import 'package:cinemaa/pages/PrintTickets.dart';
import 'package:cinemaa/pages/adam.dart';
import 'package:cinemaa/pages/avatar.dart';
import 'package:cinemaa/pages/bed.dart';
import 'package:cinemaa/pages/ph2.dart';
import 'package:cinemaa/pages/ph5.dart';
import 'package:cinemaa/pages/ph9.dart';
import 'package:flutter/material.dart';
import 'package:cinemaa/pages/login.dart';
import 'package:cinemaa/pages/movie.dart';
import 'package:cinemaa/pages/signup.dart';
import 'package:cinemaa/pages/payment.dart';
import 'package:cinemaa/pages/welcome.dart';
import 'package:cinemaa/pages/adminlogin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      home: Credit_Card_Page(),
    
      initialRoute: "/Welcome",
      routes: {
        "/Welcome": (context) => const Welcome(),
        "/login": (context) => const Login(),
        "/signup": (context) => const Signup(),
        "/movie": (context) => const movie(),
        "/payment": (context) => const payment(),
        "/ph9": (context) => const ph9(),
        "/ph5": (context) => const ph5(),
        "/ph2": (context) => const ph2(),
        "/adam": (context) => const adam(),
        "/avatar": (context) => const avatar(),
        "/bed": (context) => const bed(),
        "/adminlogin": (context) => const adminlogin(),
        "/AdminHome": (context) => AdminHome(),
        "/Credit_Card_Page": (context) => Credit_Card_Page(),
        "/PrintTickets": (context) => PrintTickets(),
        "/Addfilm": (context) => Addfilm(),
        "/Deletemovies": (context) => Deletemovies(), 
        "/Apdatemovies": (context) => Apdatemovies(), 
       
      },
    );
    // ignore: dead_code
    const movie();
  }
}
