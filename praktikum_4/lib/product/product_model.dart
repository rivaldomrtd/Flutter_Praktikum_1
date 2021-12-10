import 'dart:convert';
import 'package:http/http.dart' as http;

class Product {
  int id;
  String title;
  String thumbnail;
  String genre;
  Product({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.genre,
  });
  factory Product.fromJson(Map<String, dynamic> object) {
    return Product(
      id: object["id"],
      title: object["title"],
      thumbnail: object["thumbnail"],
      genre: object["genre"],
    );
  }
  static Future<List<Product>> connectToApi() async {
    String apiUrl = "https://www.freetogame.com/api/games";
    List<Product> product = [];
    var apiResult = await http.get(
      Uri.parse(apiUrl),
    );
    var jsonObject = json.decode(apiResult.body);
    for (var i = 0; i < jsonObject.length; i++) {
      product.add(Product.fromJson(jsonObject[i]));
    }
    return product;
  }
}
