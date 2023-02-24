import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:app/models/clasees/seller.dart';
import 'package:app/models/clasees/buyer.dart';
import 'package:shared_preferences/shared_preferences.dart';

// This class call and conect with the api.

class ApiProvider {
  Client client = Client();
  final _apiKey = '';

  // This future function create a new user and save in the api/registerseller
  Future<Seller> registerSeller(
      String username,
      String firstname,
      String lastname,
      String company,
      String NIT,
      String address,
      String phonenumber,
      String email,
      String products,
      String password) async {
    final response =
        await client.post("http://127.0.0.1:5000/api/registerseller",
            body: jsonEncode({
              "username": username,
              "firstname": firstname,
              "lastname": lastname,
              "company": company,
              "NIT": NIT,
              "address": address,
              "phonenumber": phonenumber,
              "email": email,
              "products": products,
              "password": password
            }));
    final Map result = json.decode(response.body);
    // if the conect and create user is success, save and return of json format.
    if (response.statusCode == 201) {
      await saveApiKey(result["data"]["api_key"]);
      return Seller.fromJson(result["data"]);
    } else {
      throw Exception('Failed to load post');
    }
  }

  // This future function create a new user and save in the api/registerbuyer
  Future<Buyer> registerBuyer(
      String username,
      String firstname,
      String lastname,
      String company,
      String NIT,
      String address,
      String phonenumber,
      String email,
      String password) async {
    final response =
        await client.post("http://127.0.0.1:5000/api/registerbuyer",
            body: jsonEncode({
              "username": username,
              "firstname": firstname,
              "lastname": lastname,
              "company": company,
              "NIT": NIT,
              "address": address,
              "phonenumber": phonenumber,
              "email": email,
              "password": password
            }));
    final Map result = json.decode(response.body);

    // if the conect and create user is success, save and return of json format.
    if (response.statusCode == 201) {
      await saveApiKey(result["data"]["api_key"]);
      return Buyer.fromJson(result["data"]);
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<List<Seller>> getSellers() async {
    final response =
        await client.get("http://127.0.0.1:5000/api/registerseller");

    final Map result = json.decode(response.body);
    if (response.statusCode == 200) {
      List<Seller> sellers = [];

      for (Map items in result["data"]) {
        sellers.add(Seller.fromJson(items));
      }
      for (Seller sell in sellers) {
        print(sell.username);
      }
      return sellers;
    } else {
      throw Exception("Failed to load dates");
    }
  }

  saveApiKey(String api_key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('API_TOKEN', api_key);
  }
}
