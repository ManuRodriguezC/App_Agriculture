import 'package:app/UI/Login/loginscreen.dart';
import 'package:app/bloc/blocs/user_bloc.dart';
import 'package:app/models/widgets/global.dart';
import 'package:flutter/material.dart';
import '../../models/widgets/LoginTop.dart';

// This function create the page of the view all users register.
class usersView extends StatefulWidget {
  const usersView();

  @override
  State<usersView> createState() => _usersView();
}

class _usersView extends State<usersView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: DefaultTabController(
      length: 2,
      // ignore: unnecessary_new
      child: new Scaffold(
        body: Stack(children: [
          CustomPaint(
            size: const Size(double.infinity, 120),
            painter: RPSCustomPainter(),
          ),
          CustomPaint(
            size: const Size(double.infinity, 120),
            painter: LoginCustomPainter(),
          ),
          CustomPaint(
            size: const Size(double.infinity, 120),
            painter: smallCustomPainter(),
          ),
          CustomPaint(
            size: const Size(double.infinity, 120),
            painter: circleCustomPainter(),
          ),
          TabBarView(children: [
            Container(
                margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: ListView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(height: 60),
                        buyerInfo(
                            "Sunshine",
                            "Camila",
                            "Quintero Restrepo",
                            "Sunshine S.A.S",
                            "12.451.689.2.",
                            "3102163134",
                            "Madrid - Calle 2 # 24-12",
                            "sunshine.colombia@gmail.com"),
                        const SizedBox(height: 20),
                        buyerInfo(
                            "Colombia Flowers",
                            "Jorge",
                            "Caicedo Gomez",
                            "Colombia Flowers",
                            "41.865.785",
                            "3194412486",
                            "Avenida 26 # 34 - 14",
                            "colombiaflowers@gmail.com"),
                        const SizedBox(height: 20),
                        buyerInfo(
                            "Mundo Verde",
                            "Katerine",
                            "Castro Jimenez",
                            "Mundo Verde",
                            "121.785.986",
                            "3142567896",
                            "Tres esquinas 14 - 46 - Madrid",
                            "mundoverde@gmail.com")
                      ],
                    )
                  ],
                )),
            Container(
                margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: ListView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(height: 60),
                        sellerInfo(
                            "Flowers Colombia",
                            "Juan Carlos",
                            "Restrepo",
                            "Flowers Colombia",
                            "1.124.452.987",
                            "3147845698",
                            "Calle 127 # 54-74 Bogota",
                            "flowers.colombia@gmail.com",
                            "Rosas, Ruscus"),
                        const SizedBox(height: 20),
                        sellerInfo(
                            "Elite Flowers",
                            "Carlos",
                            "Caicedo",
                            "Elite Flowers",
                            "45.145.145",
                            "3194867486",
                            "Calle 12 # 24-67 Facatativa",
                            "eliteflowers@gmail.com",
                            "Claveles, Eucalipto, Coculus"),
                        const SizedBox(height: 20),
                        sellerInfo(
                            "El renacer",
                            "Ernesto",
                            "Rodriguez",
                            "Green",
                            "12.452.478.4",
                            "3102154867",
                            "Puente piedra - Madrid",
                            "green.flowers@gmail.com",
                            "Helecho, Brillantina, Ruscus"),
                        const SizedBox(height: 20),
                        sellerInfo(
                            "Grupo Chia",
                            "Martha Cecilia",
                            "Ayala Ruiz",
                            "Grupo Chia S.A.S",
                            "33.224.537",
                            "3005443821",
                            "Chia - Calle 24 - 34",
                            "grupochia@gmail.com",
                            "Rosas, Astromelia, Aralia")
                      ],
                    )
                  ],
                )),
          ])
        ]),
        appBar: AppBar(
          title: new TabBar(
            tabs: [
              const Tab(
                icon: Icon(Icons.person),
                child: Text("Compradores"),
              ),
              const Tab(
                icon: Icon(Icons.person_3),
                child: Text("Vendedores"),
              ),
            ],
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.green,
          ),
          backgroundColor: const Color.fromARGB(255, 155, 206, 150),
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        drawer: _allDrawer(context),
      ),
    )));
  }

  // This widget create the drawer in the page, this contain differents bottons with functions, exit, home, and edite dates.
  Widget _allDrawer(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.green[50],
        child: ListView(
          children: <Widget>[
            ListTile(
                title: Text("Menu"),
                leading: Icon(Icons.home),
                onTap: () {
                  _listView(context);
                }),
            ListTile(
              title: Text("Cuenta"),
              leading: Icon(Icons.account_circle_rounded),
              onTap: () {},
            ),
            ListTile(
              title: Text("Salir"),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                _loginPage(context);
              },
            ),
          ],
        ));
  }

  // This function back of the login page
  void _loginPage(BuildContext context) {
    Navigator.of(context).pushNamed("/");
  }

  // This function call the list of the users, buyers and sellers
  void _listView(BuildContext context) {
    Navigator.of(context).pushNamed("/usersView");
  }

  // This widget create the structure or format of the any buyers register.
  Widget buyerInfo(
      String username,
      String firstname,
      String lastname,
      String company,
      String nit,
      String numberphone,
      String address,
      String email) {
    return Container(
        height: 250,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.green[50],
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10)]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("$username", style: userName),
            Text("$firstname $lastname", style: userInformation),
            Text("Compañia: $company", style: userInformation),
            Text("Telefono: $numberphone", style: userInformation),
            Text("Nit: $nit", style: userInformation),
            Text("Direccion: $address", style: userInformation),
            Text("Email: $email", style: userInformation),
            IconButton(onPressed: () {}, icon: Icon(Icons.chat, size: 40)),
            SizedBox(height: 5)
          ],
        ));
  }

  // This widget create the structure or format of the any sellers register.
  Widget sellerInfo(
      String username,
      String firstname,
      String lastname,
      String company,
      String nit,
      String numberphone,
      String address,
      String email,
      String productos) {
    return Container(
        height: 310,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.green[50],
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10)]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 5),
            Text("$username", style: userName),
            SizedBox(height: 5),
            Text("$firstname $lastname", style: userInformation),
            Text("Compañia: $company", style: userInformation),
            Text("Telefono: $numberphone", style: userInformation),
            Text("Nit: $nit", style: userInformation),
            Text("Direccion: $address", style: userInformation),
            Text("Email: $email", style: userInformation),
            Text("____________________________________"),
            SizedBox(height: 5),
            Text(
              "Productos",
              style: userName,
            ),
            SizedBox(height: 5),
            Text("$productos", style: TextStyle(fontSize: 20)),
            IconButton(onPressed: () {}, icon: Icon(Icons.chat, size: 40)),
            SizedBox(height: 5),
          ],
        ));
  }
}
