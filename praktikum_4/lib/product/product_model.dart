import 'dart:convert';
import 'dart:ffi';
import 'package:http/http.dart' as http;

class Product {
// persiapan data yang akan di ambil
  int id;
  String title;
  String imgUrl;
  String category;
  String price;
  Product({
    required this.id,
    required this.title,
    required this.imgUrl,
    required this.category,
    required this.price,
  });

// fungsi factory untuk mengambil data json tiap product
  factory Product.fromJson(Map<String, dynamic> object) {
    return Product(
      id: object["id"],
      title: object["title"],
      imgUrl: object["image"],
      category: object["category"],
      price: object["price"].toString(),
    );
  }
  static Future<List<Product>> connectToApi() async {
    String apiUrl = "https://fakestoreapi.com/products";
    List<Product> product = [];
// mendapatkan result data setelah koenksi get metohod
    var apiResult = await http.get(
      Uri.parse(apiUrl),
    );
// mendecode hasi dari method get
    var jsonObject = json.decode(apiResult.body);
// menambahkan data ke list product
    for (var i = 0; i < jsonObject.length; i++) {
      product.add(Product.fromJson(jsonObject[i]));
    }
// mengembalikan listProdut
    return product;
  }
}
