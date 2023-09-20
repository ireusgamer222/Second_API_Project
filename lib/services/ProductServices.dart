import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:second_api_project/models/ProductModel.dart';


class ProductServices{
  final url = 'https://dummyjson.com/products';

  Future <List<Products>?> FetchProducts() async{

    final JsonRespone = await http.get(Uri.parse(url));

    if(JsonRespone.statusCode == 200){
      final result = jsonDecode(JsonRespone.body);
      final ProductResults = ProductModel.fromJson(result);
      print(ProductResults.products);
      return ProductResults.products;
    }
    else{
      throw Exception("Error");
    }

  }

}