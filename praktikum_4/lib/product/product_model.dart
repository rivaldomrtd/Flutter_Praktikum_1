import 'dart:convert';
import 'package:http/http.dart' as http;

class Product {
// persiapan data yang akan di ambil
  int id;
  String title;
  String thumbnail;
  String short_description;
  Product({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.short_description,
  });

// fungsi factory untuk mengambil data json tiap product
  factory Product.fromJson(Map<String, dynamic> object) {
    return Product(
      id: object["id"],
      title: object["title"],
      thumbnail: object["thumbnail"],
      short_description: object["short_description"],
    );
  }
  static Future<List<Product>> connectToApi() async {
    String apiUrl = "https://www.freetogame.com/api/games";
    List<Product> product = [];
// mendapatkan result data setelah koenksi get metohod
    var apiResult = await http.get(
      Uri.parse(apiUrl),
    );
// mendecode hasi dari method get
    var jsonObject = json.decode(apiResult.body);
// menambahkan data ke list product
    for (var i = 0; i < 20; i++) {
      product.add(Product.fromJson(jsonObject[i]));
    }
// mengembalikan listProdut
    return product;
  }
}
