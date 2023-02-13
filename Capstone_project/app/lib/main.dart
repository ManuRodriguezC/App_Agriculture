import 'package:app/UI/Login/loginscreen.dart';
import 'package:app/UI/intray/new_users.dart';
import 'package:flutter/material.dart';
import 'UI/intray/intrayscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Exporting Agriculture',
        initialRoute: "/",
        routes: {
          "/": (BuildContext context) => LoginPage(),
          "/newUsers": (BuildContext context) => NewUsers(),
        });
  }
}
