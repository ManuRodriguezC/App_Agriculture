import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// Create the class of the seller with all dates requeriments
class Seller {
  int id;
  String username;
  String firstname;
  String lastname;
  String company;
  String NIT;
  String address;
  String phonenumber;
  String email;
  String products;
  String password;
  String api_key;

  Seller(
      this.id,
      this.username,
      this.firstname,
      this.lastname,
      this.company,
      this.NIT,
      this.address,
      this.phonenumber,
      this.email,
      this.products,
      this.password,
      this.api_key);

  factory Seller.fromJson(Map<dynamic, dynamic> parsedJson) {
    return Seller(
        parsedJson['id'],
        parsedJson['username'],
        parsedJson['firstname'],
        parsedJson['lastname'],
        parsedJson['company'],
        parsedJson['NIT'],
        parsedJson['address'],
        parsedJson['phonenumber'],
        parsedJson['email'],
        parsedJson['products'],
        parsedJson['password'],
        parsedJson['api_key']);
  }
}
