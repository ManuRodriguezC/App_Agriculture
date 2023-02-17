// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SellerState extends StatelessWidget {
  SellerState({super.key});

  List<String> products = ["todos", "los", "productos", "en", "venta", "no", "se", "como", "lo","vas", "a", "hacer"];

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("usuario vendedor"),
        backgroundColor: Colors.lightGreenAccent[700],
        actions: const [
          Padding(padding: EdgeInsets.all(20),
          child: Icon(Icons.assignment_add)
          ),
        ],
      ),
      body: Column (
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0,85,0,0),
            child: Row(
              children: <Widget>[
                Expanded (
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text("Nombre:"),//no se si lo vas a poner hay mismo o en otro
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text("Correo:"),//no se si lo vas a poner hay mismo o en otro
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text("Telefono:"),//no se si lo vas a poner hay mismo o en otro
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text("Empresa:"),//no se si lo vas a poner hay mismo o en otro
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text("Dirección:"),//no se si lo vas a poner hay mismo o en otro
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(
                  Icons.person, 
                  size: 150
                )
              ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(115.0, 310, 10, 10),
            child: Row(
              children: <Widget>[
                Text("PRODUCTOS EN VENTA",)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                final product = products[index];
                return ListTile(
                  title: Text(product),
                  leading: Icon(Icons.move_to_inbox_rounded),
                );
              },
            ),
          )
        ],
      ),
      /*drawer: Drawer(
        backgroundColor: Colors.greenAccent[100],
      ),*/
    );
  }
}