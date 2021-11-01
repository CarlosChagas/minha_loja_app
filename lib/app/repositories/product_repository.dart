import 'package:dio/dio.dart';
import 'package:minha_loja_app/app/Models/product_model.dart';

class ProductRepository {
  Dio? dio;
  final url = "https://jsonplaceholder.typicode.com/todos";

  ProductRepository([Dio? client]) {
    dio = client ?? Dio();
  }

  Future<List<ProductModel>> fetchProdutos() async {
    final response = await dio?.get(url);
    final list = response?.data as List;
    return list.map((json) => ProductModel.fromJson(json)).toList();
  }
}
