import 'package:app/UI/Login/loginscreen.dart';
import 'package:app/bloc/blocs/user_bloc.dart';
import 'package:app/models/widgets/global.dart';
import 'package:flutter/material.dart';

import '../../models/widgets/LoginTop.dart';

class NewUsers extends StatefulWidget {
  const NewUsers();

  @override
  State<NewUsers> createState() => _NewUsers();
}

class _NewUsers extends State<NewUsers> {
  TextEditingController usernamebuyerController = TextEditingController();
  TextEditingController firstnamebuyerController = TextEditingController();
  TextEditingController lastnamebuyerController = TextEditingController();
  TextEditingController companybuyerController = TextEditingController();
  TextEditingController nitbuyerController = TextEditingController();
  TextEditingController addressbuyerController = TextEditingController();
  TextEditingController phonenumberbuyerController = TextEditingController();
  TextEditingController emailbuyerController = TextEditingController();
  TextEditingController passwordbuyerController = TextEditingController();
  TextEditingController password2buyerController = TextEditingController();
  TextEditingController usernamesellerController = TextEditingController();
  TextEditingController firstnamesellerController = TextEditingController();
  TextEditingController lastnamesellerController = TextEditingController();
  TextEditingController companysellerController = TextEditingController();
  TextEditingController nitsellerController = TextEditingController();
  TextEditingController addresssellerController = TextEditingController();
  TextEditingController phonenumbersellerController = TextEditingController();
  TextEditingController emailsellerController = TextEditingController();
  TextEditingController productssellerController = TextEditingController();
  TextEditingController passwordsellerController = TextEditingController();
  TextEditingController password2sellerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: DefaultTabController(
          length: 2,
          // ignore: unnecessary_new
          child: new Scaffold(
            body: Stack(children: [
              CustomPaint(
                size: Size(double.infinity, 120),
                painter: RPSCustomPainter(),
              ),
              CustomPaint(
                size: Size(double.infinity, 120),
                painter: LoginCustomPainter(),
              ),
              CustomPaint(
                size: Size(double.infinity, 120),
                painter: smallCustomPainter(),
              ),
              CustomPaint(
                size: Size(double.infinity, 120),
                painter: circleCustomPainter(),
              ),
              TabBarView(children: [
                Container(
                  margin:
                      EdgeInsets.only(bottom: 40, left: 40, right: 40, top: 90),
                  child: Form(
                    child: ListView(children: [
                      infoUsers("Usuario", usernamebuyerController),
                      SizedBox(height: 15),
                      infoUsers("Nombre", firstnamebuyerController),
                      SizedBox(height: 15),
                      infoUsers("Apellido", lastnamebuyerController),
                      SizedBox(height: 15),
                      infoUsers("Empresa", companybuyerController),
                      SizedBox(height: 15),
                      infoUsers("NIT", nitbuyerController),
                      SizedBox(height: 15),
                      infoUsers("Direccion", addressbuyerController),
                      SizedBox(height: 15),
                      infoUsers("Telefono", phonenumberbuyerController),
                      SizedBox(height: 15),
                      infoUsers("Email", emailbuyerController),
                      SizedBox(height: 15),
                      infoUsers('Contraseña', passwordbuyerController),
                      SizedBox(height: 15),
                      infoUsers(
                          'Confirmar Contraseña', password2buyerController),
                      SizedBox(height: 15),
                      MaterialButton(
                        onPressed: () {
                          if (usernamebuyerController.text != null ||
                              firstnamebuyerController.text != null ||
                              lastnamebuyerController.text != null ||
                              addressbuyerController.text != null ||
                              phonenumberbuyerController.text != null ||
                              emailbuyerController.text != null ||
                              passwordbuyerController.text != null ||
                              password2buyerController != null) {
                            buyerBloc
                                .registerBuyer(
                                    usernamebuyerController.text,
                                    firstnamebuyerController.text,
                                    lastnamebuyerController.text,
                                    companybuyerController.text,
                                    nitbuyerController.text,
                                    addressbuyerController.text,
                                    phonenumberbuyerController.text,
                                    emailbuyerController.text,
                                    passwordbuyerController.text)
                                .then(_showDialogBox(context));
                          }
                        },
                        child: Text(
                          "Registrase",
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                      )
                    ]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(40),
                  child: Form(
                    child: ListView(children: [
                      infoUsers("Usuario", usernamesellerController),
                      SizedBox(height: 15),
                      infoUsers("Nombre", firstnamesellerController),
                      SizedBox(height: 15),
                      infoUsers("Apellido", lastnamesellerController),
                      SizedBox(height: 15),
                      infoUsers("Empresa", companysellerController),
                      SizedBox(height: 15),
                      infoUsers("NIT", nitsellerController),
                      SizedBox(height: 15),
                      infoUsers("Direccion", addresssellerController),
                      SizedBox(height: 15),
                      infoUsers("Telefono", phonenumbersellerController),
                      SizedBox(height: 15),
                      infoUsers("Email", emailsellerController),
                      SizedBox(height: 15),
                      infoUsers('Productos', productssellerController),
                      SizedBox(height: 15),
                      infoUsers('Contraseña', passwordsellerController),
                      SizedBox(height: 15),
                      infoUsers(
                          'Confirmar Contraseña', password2sellerController),
                      SizedBox(height: 15),
                      MaterialButton(
                        onPressed: () {
                          if (usernamesellerController.text != null ||
                              firstnamesellerController.text != null ||
                              lastnamesellerController.text != null ||
                              addresssellerController.text != null ||
                              phonenumbersellerController.text != null ||
                              emailsellerController.text != null ||
                              productssellerController.text != null ||
                              passwordsellerController.text != null ||
                              password2sellerController != null) {
                            sellerBloc
                                .registerSeller(
                                    usernamesellerController.text,
                                    firstnamesellerController.text,
                                    lastnamesellerController.text,
                                    companysellerController.text,
                                    nitsellerController.text,
                                    addresssellerController.text,
                                    phonenumbersellerController.text,
                                    emailsellerController.text,
                                    productssellerController.text,
                                    passwordsellerController.text)
                                .then((_showDialogBox(context)));
                          }
                        },
                        child: Text(
                          "Registrase",
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                      )
                    ]),
                  ),
                ),
              ])
            ]),
            appBar: AppBar(
              title: new TabBar(
                tabs: [
                  const Tab(
                    icon: Icon(Icons.person),
                    child: Text("Comprador", style: TextStyle(fontSize: 20)),
                  ),
                  const Tab(
                    icon: Icon(Icons.person_3),
                    child: Text("Vendedor", style: TextStyle(fontSize: 20)),
                  ),
                ],
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.green,
              ),
              backgroundColor: const Color.fromARGB(255, 155, 206, 150),
              elevation: 0,
            ),
            backgroundColor: Colors.white,
          ),
        )));
  }

  void _listPage(BuildContext context) {
    Navigator.of(context).pushNamed("/usersView");
  }

  Widget infoUsers(String data, TextEditingController info) {
    return TextFormField(
      textAlign: TextAlign.center,
      controller: info,
      style: TextStyle(fontSize: 22.0, color: Colors.grey),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.green[50],
        hintText: data,
        contentPadding:
            const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(25.7),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(25.7),
        ),
      ),
    );
  }

  void _showDialogBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("BIENVENIDO"),
            content: Text("Tu registro fue exitoso! Haz clic para continuar"),
            actions: [
              TextButton(
                  onPressed: () {
                    _listPage(context);
                  },
                  child: Text("CONTINUAR"))
            ],
          );
        });
  }
}
