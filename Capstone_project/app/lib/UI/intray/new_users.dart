import 'package:app/UI/Login/loginscreen.dart';
import 'package:app/bloc/blocs/user_bloc.dart';
import 'package:app/models/widgets/global.dart';
import 'package:flutter/material.dart';
import '../../models/widgets/LoginTop.dart';

// This function create the page of the new users and create the format with dates of the user.

class NewUsers extends StatefulWidget {
  const NewUsers();

  @override
  State<NewUsers> createState() => _NewUsers();
}

class _NewUsers extends State<NewUsers> {
  TextEditingController usernamebuyerController =
      TextEditingController(); // Variable that save the username of the buyer
  TextEditingController firstnamebuyerController =
      TextEditingController(); // Variable that save the firstname of the buyer
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
                size: const Size(double.infinity, 120),
                painter: RPSCustomPainter(),
              ),
              CustomPaint(
                size: const Size(double.infinity, 120),
                painter: LoginCustomPainter(),
              ),
              CustomPaint(
                size: const Size(double.infinity, 120),
                painter: smallCustomPainter(),
              ),
              CustomPaint(
                size: const Size(double.infinity, 120),
                painter: circleCustomPainter(),
              ),
              TabBarView(children: [
                Container(
                  margin: const EdgeInsets.only(
                      bottom: 40, left: 40, right: 40, top: 90),
                  child: Form(
                    child: ListView(children: [
                      infoUsers("Usuario", usernamebuyerController),
                      const SizedBox(height: 15),
                      infoUsers("Nombre", firstnamebuyerController),
                      const SizedBox(height: 15),
                      infoUsers("Apellido", lastnamebuyerController),
                      const SizedBox(height: 15),
                      infoUsers("Empresa", companybuyerController),
                      const SizedBox(height: 15),
                      infoUsers("NIT", nitbuyerController),
                      const SizedBox(height: 15),
                      infoUsers("Direccion", addressbuyerController),
                      const SizedBox(height: 15),
                      infoUsers("Telefono", phonenumberbuyerController),
                      const SizedBox(height: 15),
                      infoUsers("Email", emailbuyerController),
                      const SizedBox(height: 15),
                      infoUsers('Contraseña', passwordbuyerController),
                      const SizedBox(height: 15),
                      infoUsers(
                          'Confirmar Contraseña', password2buyerController),
                      const SizedBox(height: 15),
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
                        child: const Text(
                          "Registrase",
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                      )
                    ]),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(40),
                  child: Form(
                    child: ListView(children: [
                      infoUsers("Usuario", usernamesellerController),
                      const SizedBox(height: 15),
                      infoUsers("Nombre", firstnamesellerController),
                      const SizedBox(height: 15),
                      infoUsers("Apellido", lastnamesellerController),
                      const SizedBox(height: 15),
                      infoUsers("Empresa", companysellerController),
                      const SizedBox(height: 15),
                      infoUsers("NIT", nitsellerController),
                      const SizedBox(height: 15),
                      infoUsers("Direccion", addresssellerController),
                      const SizedBox(height: 15),
                      infoUsers("Telefono", phonenumbersellerController),
                      const SizedBox(height: 15),
                      infoUsers("Email", emailsellerController),
                      const SizedBox(height: 15),
                      infoUsers('Productos', productssellerController),
                      const SizedBox(height: 15),
                      infoUsers('Contraseña', passwordsellerController),
                      const SizedBox(height: 15),
                      infoUsers(
                          'Confirmar Contraseña', password2sellerController),
                      const SizedBox(height: 15),
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
                        child: const Text(
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

  // This widget create the format of the any data that user inside.
  Widget infoUsers(String data, TextEditingController info) {
    return TextFormField(
      textAlign: TextAlign.center,
      controller: info,
      style: const TextStyle(fontSize: 22.0, color: Colors.grey),
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

  // This function write the message of the user when login is success
  void _showDialogBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("BIENVENIDO"),
            content:
                const Text("Tu registro fue exitoso! Haz clic para continuar"),
            actions: [
              TextButton(
                  onPressed: () {
                    _listPage(context);
                  },
                  child: const Text("CONTINUAR"))
            ],
          );
        });
  }
}
