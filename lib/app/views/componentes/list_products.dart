import 'package:flutter/material.dart';
import 'package:minha_loja_app/app/controllers/home_controller.dart';

class ListProducts extends StatefulWidget {
  const ListProducts({Key? key}) : super(key: key);

  @override
  _ListProductsState createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Shirts',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(top: 9.0),
                child: Text(
                  "27 items found",
                  style: TextStyle(color: Colors.cyan),
                ),
              ),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 1.0),
                child: Column(
                  children: [
                    Container(
                      color: Colors.green,
                      width: 300,
                      height: 250,
                    ),
                    Container(
                      color: Colors.black38,
                      width: 300,
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.green,
                    width: 300,
                    height: 200,
                  ),
                  Container(
                    color: Colors.black38,
                    width: 300,
                    height: 100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    controller.start();
  }
}
