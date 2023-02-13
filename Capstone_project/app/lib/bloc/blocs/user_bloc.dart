import 'package:app/bloc/resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';
import 'package:app/models/clasees/seller.dart';
import 'package:app/models/clasees/buyer.dart';

class SellerBloc {
  final _repoditory = Repository();
  final _userGetter = PublishSubject<Seller>();

  Observable<Seller> get getSeller => _userGetter.stream;

  registerSeller(
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
    Seller seller = await _repoditory.registerSeller(
        username,
        firstname,
        lastname,
        company,
        NIT,
        address,
        phonenumber,
        email,
        products,
        password);
    _userGetter.sink.add(seller);
  }

  dispose() {
    _userGetter.close();
  }
}

class BuyerBloc {
  final _repoditory = Repository();
  final _userGetter = PublishSubject<Buyer>();

  Observable<Buyer> get getBuyer => _userGetter.stream;

  registerBuyer(
      String username,
      String firstname,
      String lastname,
      String company,
      String NIT,
      String address,
      String phonenumber,
      String email,
      String password) async {
    Buyer buyer = await _repoditory.registerBuyer(username, firstname, lastname,
        company, NIT, address, phonenumber, email, password);
    _userGetter.sink.add(buyer);
  }

  dispose() {
    _userGetter.close();
  }
}

final sellerBloc = SellerBloc();
final buyerBloc = BuyerBloc();
