import 'package:flutter/material.dart';
import 'package:minha_loja_app/app/views/componentes/list_products.dart';
import 'package:minha_loja_app/app/views/componentes/menu.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.deepPurple,
          size: 45.0,
        ),
        backgroundColor: Colors.deepPurple[50],
        elevation: 0,
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              'My Shop',
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ),
        ),
        actions: const <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 8, 0),
              child: Text(
                "Cart(0)",
                style: TextStyle(color: Colors.deepPurple),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(children: const [Menu()]),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 22.5, right: 22.5),
                child: ListProducts(),
              ),
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
    );
  }
}
