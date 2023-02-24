import 'package:app/UI/Login/loginscreen.dart';
import 'package:app/UI/intray/new_users.dart';
import 'package:flutter/material.dart';
import 'UI/intray/intrayscreen.dart';
import 'UI/intray/listUsers.dart';

// This function run the app
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Contein all page of the app and routes
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Linkding Farmes', initialRoute: "/", routes: {
      "/": (BuildContext context) => LoginPage(),
      "/newUsers": (BuildContext context) => NewUsers(),
      "/usersView": (BuildContext context) => usersView()
    });
  }
}
