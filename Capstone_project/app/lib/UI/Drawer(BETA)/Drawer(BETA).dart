//escribir en Scaffold la linea de codigo:
//drawer: _allDrawer(context),
//no pude implementarlo
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Widget _allDrawer (BuildContext context){
  return Drawer(
    child: ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration (color: Colors.black12),
          child: Row(
            children: [
              FlutterLogo(
                size: 100,
                ),
              Text("drawer")
            ],
          ),
        ),
        ListTile(
          title: Text("Menu"),
          leading: Icon(Icons.home),
          onTap: () => showHome(context),
        ),
        ListTile(
          title: Text("Libreta de Contactos"),
          leading: Icon(Icons.assignment),
          onTap: () => showContacts(context),
        ),
        ListTile(
          title: Text("Cuenta"),
          leading: Icon(Icons.account_circle_rounded),
          onTap: () => showAccount(context),
        ),
        ListTile(
          title: Text("Salir"),
          leading: Icon(Icons.exit_to_app),
          onTap: () => showExit(context),
        ),
      ],
    )
  );
}

void showHome (BuildContext context){
  Navigator.pop(context);
}

void showContacts(BuildContext context) {
  Navigator.pop(context);
}

void showAccount(BuildContext context) {
  Navigator.pop(context);
}

void showExit(BuildContext context) {
  Navigator.pop(context);
}
