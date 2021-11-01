import 'package:flutter/material.dart';
import 'package:minha_loja_app/app/controllers/home_controller.dart';

class ListViewBuilderc extends StatefulWidget {
  const ListViewBuilderc({Key? key}) : super(key: key);

  @override
  _ListViewBuildercState createState() => _ListViewBuildercState();
}

class _ListViewBuildercState extends State<ListViewBuilderc> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.products.length,
      itemBuilder: (context, int index) {
        return const ListTile(
          title: Text('product.name'),
        );
      },
    );
  }

  @override
  Future initState() async {
    super.initState();
    await controller.start();
  }
}
