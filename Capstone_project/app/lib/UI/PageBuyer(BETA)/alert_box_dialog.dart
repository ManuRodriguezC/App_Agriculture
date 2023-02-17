// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void _showDialogBox (BuildContext context){
  showDialog(
    context: context, 
    builder: (BuildContext context){
      return AlertDialog(
        title: Text("BIENVENIDO"),
        content: Text("Espereramos que disfrute de esta aplicacion y que encuentre lo que quiere comprar"),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, 
          child: Text("CONTINUAR")
          )
        ],
      );
    }
  );
}
