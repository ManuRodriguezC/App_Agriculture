import 'package:app/bloc/resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';
import 'package:app/models/clasees/seller.dart';
import 'package:app/models/clasees/buyer.dart';

// This class create the methods that create the user since front flutter in the api.
class SellerBloc {
  final _repoditory = Repository();
  final _userGetter = PublishSubject<Seller>();
  final _sellersSubject = BehaviorSubject<List<Seller>>();

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

  getUserTask() async {
    Seller seller = await _repoditory.getSellers();
    _userGetter.sink.add(seller);
  }

  dispose() {
    _userGetter.close();
  }

  Stream<List<Seller>> get getSellers => _sellersSubject.stream;
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
