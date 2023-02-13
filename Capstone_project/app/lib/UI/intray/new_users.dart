import 'package:app/bloc/blocs/user_bloc.dart';
import 'package:app/models/widgets/global.dart';
import 'package:flutter/material.dart';

class NewUsers extends StatefulWidget {
  const NewUsers();

  @override
  State<NewUsers> createState() => _NewUsers();
}

class _NewUsers extends State<NewUsers> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController nitController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController productsController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController password2Controller = TextEditingController();

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
                    controller: usernameController,
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
                    controller: firstnameController,
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
                    controller: lastnameController,
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
                    controller: companyController,
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
                    controller: nitController,
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
                    controller: addressController,
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
                    controller: phonenumberController,
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
                    controller: emailController,
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
                    controller: passwordController,
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
                    controller: password2Controller,
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
                      if (usernameController.text != null ||
                          firstnameController.text != null ||
                          lastnameController.text != null ||
                          addressController.text != null ||
                          phonenumberController.text != null ||
                          emailController.text != null ||
                          passwordController.text != null ||
                          password2Controller != null) {
                        sellerBloc.registerSeller(
                            usernameController.text,
                            firstnameController.text,
                            lastnameController.text,
                            lastnameController.text,
                            companyController.text,
                            nitController.text,
                            addressController.text,
                            phonenumberController.text,
                            emailController.text,
                            passwordController.text);
                      }
                    },
                    child: Text("Crear"),
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
                    controller: usernameController,
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
                    controller: firstnameController,
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
                    controller: lastnameController,
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
                    controller: companyController,
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
                    controller: nitController,
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
                    controller: addressController,
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
                    controller: phonenumberController,
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
                    controller: emailController,
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
                    controller: productsController,
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
                    controller: passwordController,
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
                    controller: password2Controller,
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
}
