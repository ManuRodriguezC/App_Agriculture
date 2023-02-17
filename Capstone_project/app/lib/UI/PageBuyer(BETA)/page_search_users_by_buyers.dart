// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/page_possible_seller_by_buyer.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  List<String> users = ["todos", "los", "usuarios", "no", "se", "como", "lo","vas", "a", "hacer"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pagina para comprador"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            final user = users[index];
            return ListTile(
              title: Text(user),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.of(context).pushNamed("/sellerByBuyer", arguments: user);
              },
            );
          },
        ),
      ),
    );
  }
}

/*void _showSecondPage(BuildContext context) {
  final route = MaterialPageRoute (builder: (BuildContext context){
    return SellerState (user)
  })
  //print("pasar a pagina del usuario seleccionado");
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SellerState()));
}*/
