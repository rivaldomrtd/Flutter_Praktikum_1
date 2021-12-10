import 'dart:convert';
import 'package:http/http.dart' as http;

class Product {
// persiapan data yang akan di ambil
  String idCategory;
  String strCategoryThumb;
  String strCategory;
  String strCategoryDescription;
  Product({
    required this.idCategory,
    required this.strCategoryThumb,
    required this.strCategory,
    required this.strCategoryDescription,
  });

// fungsi factory untuk mengambil data json tiap product
  factory Product.fromJson(Map<String, dynamic> object) {
    return Product(
      idCategory: object["idCategory"],
      strCategoryThumb: object["strCategoryThumb"],
      strCategory: object["strCategory"],
      strCategoryDescription: object["strCategoryDescription"],
    );
  }
  static Future<List<Product>> connectToApi() async {
    String apiUrl = "https://www.themealdb.com/api/json/v1/1/categories.php";
    List<Product> product = [];
// mendapatkan result data setelah koenksi get metohod
    var apiResult = await http.get(
      Uri.parse(apiUrl),
    );
// mendecode hasi dari method get
    var jsonObject = json.decode(apiResult.body);
    var Data = (jsonObject as Map<String, dynamic>)['categories'];
// menambahkan data ke list product
    for (var i = 0; i < Data.length; i++) {
      product.add(Product.fromJson(Data[i]));
    }
// mengembalikan listProdut
    return product;
  }
}
