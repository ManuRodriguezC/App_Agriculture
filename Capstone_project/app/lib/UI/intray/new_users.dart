import 'package:app/UI/Login/loginscreen.dart';
import 'package:app/bloc/blocs/user_bloc.dart';
import 'package:app/models/widgets/global.dart';
import 'package:flutter/material.dart';

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
        home: SafeArea(
            child: DefaultTabController(
      length: 2,
      // ignore: unnecessary_new
      child: new Scaffold(
        body: Stack(children: [
          TabBarView(children: [
            Container(
              margin: EdgeInsets.all(40),
              child: Form(
                child: ListView(children: [
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: usernamebuyerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Usuario',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: firstnamebuyerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Nombre',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: lastnamebuyerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Apellido',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: companybuyerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Empresa',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: nitbuyerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'NIT',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: addressbuyerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Direccion',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: phonenumberbuyerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Telefono',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: emailbuyerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: passwordbuyerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Contraseña',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: password2buyerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Confirmar Contraseña',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
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
                            .then(_loginPage(context));
                      }
                    },
                    child: Text(
                      "Registrase",
                      style: TextStyle(color: Colors.green),
                    ),
                  )
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.all(40),
              child: Form(
                child: ListView(children: [
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: usernamesellerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Usuario',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: firstnamesellerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Nombre',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: lastnamesellerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Apellido',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: companysellerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Empresa',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: nitsellerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'NIT',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: addresssellerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Direccion',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: phonenumbersellerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Telefono',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: emailsellerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: productssellerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Productos',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: passwordsellerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Contraseña',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: password2sellerController,
                    style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Confirmar Contraseña',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
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
                            .then((_loginPage(context)));
                      }
                    },
                    child: Text(
                      "Registrase",
                      style: TextStyle(color: Colors.green),
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
                child: Text("Comprador"),
              ),
              const Tab(
                icon: Icon(Icons.person_3),
                child: Text("Vendedor"),
              ),
            ],
            labelColor: Colors.green,
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: darkGreyColor,
      ),
    )));
  }

  void _loginPage(BuildContext context) {
    Navigator.of(context).pushNamed("/");
  }
}
