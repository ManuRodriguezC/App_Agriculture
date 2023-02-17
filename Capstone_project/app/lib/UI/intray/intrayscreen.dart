import 'package:app/bloc/blocs/user_bloc.dart';
import 'package:app/models/clasees/seller.dart';
import 'package:flutter/material.dart';
import 'package:app/bloc/resources/api.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:app/models/clasees/seller.dart';
import 'package:app/models/clasees/buyer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class usersPage extends StatefulWidget {
  const usersPage({super.key});

  @override
  State<usersPage> createState() => _usersPageState();
}

class _usersPageState extends State<usersPage> {
  Future<List<Seller>>? _listSellers;

  Future<List<Seller>> getSellers() async {
    final response = await http.get("http://127.0.0.1:5000/api/registerseller");

    List<Seller> sellers = [];
    if (response.statusCode == 200) {
      String body = json.decode(response.body);

      final jsonData = jsonDecode(body);

      for (var item in jsonData["data"]) {
        sellers.add(Seller(
            item["id"],
            item["username"],
            item["firstname"],
            item["lastname"],
            item["company"],
            item["NIT"],
            item["address"],
            item["phonenumber"],
            item["email"],
            item["products"],
            item["password"],
            item["api_key"]));
      }
      return sellers;
    } else {
      throw Exception("Failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSellers();
  }
}
