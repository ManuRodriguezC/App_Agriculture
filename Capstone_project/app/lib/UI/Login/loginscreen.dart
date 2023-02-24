// ignore_for_file: prefer_const_constructors

import 'package:app/UI/intray/intrayscreen.dart';
import 'package:app/UI/intray/new_users.dart';
import 'package:app/bloc/blocs/user_bloc.dart';
import 'package:app/models/widgets/global.dart';
import 'package:flutter/material.dart';
import 'package:app/UI/intray/new_users.dart';
import 'package:app/bloc/resources/api.dart';
import '../../models/widgets/LoginTop.dart';

// This function create the login page.

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameText =
      new TextEditingController(); // This variable save the username of the user inside in the login page
  TextEditingController passwordText =
      new TextEditingController(); // This variable save the password of the user inside in the login page

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          // ignore: sort_child_properties_last
          child: Stack(children: [
            CustomPaint(
              size: Size(double.infinity, 200),
              painter: RPSCustomPainter(),
            ),
            CustomPaint(
              size: Size(double.infinity, 200),
              painter: LoginCustomPainter(),
            ),
            CustomPaint(
              size: Size(double.infinity, 200),
              painter: smallCustomPainter(),
            ),
            CustomPaint(
              size: Size(double.infinity, 200),
              painter: circleCustomPainter(),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 40, right: 40, top: 200, bottom: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "  Bienvenido!",
                    style: loginTitle,
                  ),
                  Container(
                      height: 200,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Theme(
                                data: Theme.of(context)
                                    .copyWith(splashColor: Colors.transparent),
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  controller: usernameText,
                                  autocorrect: false,
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.black),
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.green[50],
                                      hintText: "Usuario",
                                      contentPadding: const EdgeInsets.only(
                                          left: 14, bottom: 8, top: 8),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      enabledBorder: UnderlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          borderSide:
                                              BorderSide(color: Colors.white))),
                                )),
                            Theme(
                                data: Theme.of(context)
                                    .copyWith(splashColor: Colors.transparent),
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  controller: passwordText,
                                  autocorrect: false,
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.black),
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.green[50],
                                      hintText: "Contraseña",
                                      contentPadding: const EdgeInsets.only(
                                          left: 14, bottom: 8, top: 8),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      enabledBorder: UnderlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          borderSide:
                                              BorderSide(color: Colors.white))),
                                )),
                            MaterialButton(
                              onPressed: () {
                                _showDialogBox(context);
                              },
                              child: const Text(
                                "Iniciar sesion",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Avenir',
                                ),
                              ),
                            )
                          ])),
                  Container(
                    // ignore: prefer_const_literals_to_create_immutables
                    child: Column(children: [
                      const Text("No tienes cuenta, unete!",
                          style: TextStyle(fontWeight: FontWeight.w400))
                    ]),
                  ),
                  MaterialButton(
                      onPressed: () {
                        _newUsers(context);
                      },
                      child: Text(
                        "Registrate",
                        style: TextStyle(color: Colors.green, fontSize: 18),
                      ))
                ],
              ),
            ),
          ]),
          decoration: BoxDecoration(
              image: DecorationImage(
                  opacity: 0.1,
                  image: NetworkImage(
                      "https://tse3.mm.bing.net/th?id=OIP.b7LPxxhnDx6Mrg3Hxf-DswHaK1&pid=Api&P=0"),
                  fit: BoxFit.cover)),
        ),
      ),
    );
  }

  // This function call the page of the new user
  void _newUsers(BuildContext context) {
    Navigator.of(context).pushNamed("/newUsers");
  }

  // This function call the page of the all usrrs register in the app
  void _usersView(BuildContext context) {
    Navigator.of(context).pushNamed("/usersView");
  }

  @override
  void initState() {
    super.initState();
  }

  // This function write the message of the user when login is success
  void _showDialogBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("BIENVENIDO"),
            content: Text(
                "Espereramos que disfrute de esta aplicacion y que encuentre lo que quiere comprar o vender"),
            actions: [
              TextButton(
                  onPressed: () {
                    _usersView(context);
                  },
                  child: Text("CONTINUAR"))
            ],
          );
        });
  }
}
