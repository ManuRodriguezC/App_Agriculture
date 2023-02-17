import 'package:app/UI/Login/loginscreen.dart';
import 'package:app/bloc/blocs/user_bloc.dart';
import 'package:app/models/widgets/global.dart';
import 'package:flutter/material.dart';
import '../../models/widgets/LoginTop.dart';

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
            size: Size(double.infinity, 120),
            painter: RPSCustomPainter(),
          ),
          CustomPaint(
            size: Size(double.infinity, 120),
            painter: LoginCustomPainter(),
          ),
          CustomPaint(
            size: Size(double.infinity, 120),
            painter: smallCustomPainter(),
          ),
          CustomPaint(
            size: Size(double.infinity, 120),
            painter: circleCustomPainter(),
          ),
          TabBarView(children: [
            Container(
                margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: ListView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(height: 60),
                        buyerInfo(
                            "Flowers Colombia",
                            "Juan Carlos",
                            "Restrepo",
                            "Flowers Colombia",
                            "1.124.452.987",
                            "3147845698",
                            "Calle 127 # 54-74 Bogota",
                            "flowers.colombia@gmail.com"),
                        SizedBox(height: 20),
                        buyerInfo(
                            "Elite Flowers",
                            "Carlos",
                            "Caicedo",
                            "Elite Flowers",
                            "45.145.145",
                            "3194867486",
                            "Calle 12 # 24-67 Facatativa",
                            "eliteflowers@gmail.com"),
                        SizedBox(height: 20),
                        buyerInfo(
                            "El renacer",
                            "Ernesto",
                            "Rodriguez",
                            "Green",
                            "12.452.478.4",
                            "3102154867",
                            "Puente piedra - Madrid",
                            "green.flowers@gmail.com")
                      ],
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: ListView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(height: 60),
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
                        SizedBox(height: 20),
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
                        SizedBox(height: 20),
                        sellerInfo(
                            "El renacer",
                            "Ernesto",
                            "Rodriguez",
                            "Green",
                            "12.452.478.4",
                            "3102154867",
                            "Puente piedra - Madrid",
                            "green.flowers@gmail.com",
                            "Helecho, Brillantina, Ruscus")
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

  void _loginPage(BuildContext context) {
    Navigator.of(context).pushNamed("/");
  }

  void _listView(BuildContext context) {
    Navigator.of(context).pushNamed("/usersView");
  }

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
        height: 200,
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
            Text("Email: $email", style: userInformation)
          ],
        ));
  }

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
        height: 240,
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
            Text("$productos"),
            SizedBox(height: 10)
          ],
        ));
  }
}
