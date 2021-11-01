import 'package:minha_loja_app/app/Models/product_model.dart';
import 'package:minha_loja_app/app/repositories/product_repository.dart';

class HomeController {
  List<ProductModel> products = [];
  final repository = ProductRepository();

  Future start() async {
    products = await repository.fetchProdutos();
  }
}
