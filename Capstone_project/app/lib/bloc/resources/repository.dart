import 'package:app/bloc/resources/api.dart';
import 'package:app/models/clasees/seller.dart';
import 'package:app/models/clasees/seller.dart';
import 'package:app/models/clasees/buyer.dart';

// This class connect the class of the users with the correct format in the api.
class Repository {
  final apiProvider = ApiProvider();

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
          String password) =>
      apiProvider.registerSeller(username, firstname, lastname, company, NIT,
          address, phonenumber, email, products, password);

  Future<Buyer> registerBuyer(
          String username,
          String firstname,
          String lastname,
          String company,
          String NIT,
          String address,
          String phonenumber,
          String email,
          String password) =>
      apiProvider.registerBuyer(username, firstname, lastname, company, NIT,
          address, phonenumber, email, password);

  Future getSellers() => apiProvider.getSellers();
}
