// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/page_possible_seller_by_buyer.dart';
import 'package:flutter_application_1/page_search_users_by_buyers.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => MyHomePage(),
        "/sellerByBuyer": (BuildContext context) => SellerState()
      }
    );
  }
}
