import 'package:app/UI/intray/new_users.dart';
import 'package:app/models/widgets/global.dart';
import 'package:flutter/material.dart';
import 'package:app/UI/intray/new_users.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameText = new TextEditingController();
  TextEditingController passwordText = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin:
            const EdgeInsets.only(left: 40, right: 40, top: 100, bottom: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Bienvenido!",
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
                            style: TextStyle(fontSize: 22, color: Colors.black),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Usuario",
                                contentPadding: const EdgeInsets.only(
                                    left: 14, bottom: 8, top: 8),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(25)),
                                enabledBorder: UnderlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
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
                            style: TextStyle(fontSize: 22, color: Colors.black),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Contraseña",
                                contentPadding: const EdgeInsets.only(
                                    left: 14, bottom: 8, top: 8),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(25)),
                                enabledBorder: UnderlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide:
                                        BorderSide(color: Colors.white))),
                          )),
                      MaterialButton(
                        onPressed: () {},
                        child: const Text(
                          "Iniciar sesion",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Avenir'),
                        ),
                      )
                    ])),
            Container(
              child: Column(children: [Text("No tienes cuenta, unete!")]),
            ),
            MaterialButton(
                onPressed: () {
                  _newUsers(context);
                },
                child: Text("Registrate"))
          ],
        ),
      ),
      backgroundColor: darkGreyColor,
    );
  }

  void _newUsers(BuildContext context) {
    Navigator.of(context).pushNamed("/newUsers");
  }
}
