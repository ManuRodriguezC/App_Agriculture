import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// Create the class of the buyer with all dates requeriments
class Buyer {
  int id;
  String username;
  String firstname;
  String lastname;
  String company;
  String NIT;
  String address;
  String phonenumber;
  String email;
  String password;
  String api_key;

  Buyer(
      this.id,
      this.username,
      this.firstname,
      this.lastname,
      this.company,
      this.NIT,
      this.address,
      this.phonenumber,
      this.email,
      this.password,
      this.api_key);

  factory Buyer.fromJson(Map<String, dynamic> parsedJson) {
    return Buyer(
        parsedJson['id'],
        parsedJson['username'],
        parsedJson['firstname'],
        parsedJson['lastname'],
        parsedJson['company'],
        parsedJson['NIT'],
        parsedJson['address'],
        parsedJson['phonenumber'],
        parsedJson['email'],
        parsedJson['password'],
        parsedJson['api_key']);
  }
}
