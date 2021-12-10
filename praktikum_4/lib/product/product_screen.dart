import 'package:flutter/material.dart';
import 'package:praktikum4/product/product_model.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<Product> listProduct = [];
  _getProduct() async {
    await Product.connectToApi().then((value) => listProduct = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api Http"),
      ),
      body: FutureBuilder(
        future: _getProduct(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Center(child: CircularProgressIndicator());
            case ConnectionState.active:
            case ConnectionState.waiting:
              return const Center(child: CircularProgressIndicator());
            case ConnectionState.done:
              return (snapshot.hasError)
                  ? Text('Error: ${snapshot.error}')
                  : ListView.builder(
                      itemCount: listProduct.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            leading: Image.network(
                              listProduct[index].imgUrl,
                              width: 50,
                              fit: BoxFit.fill,
                            ),
                            title: Text(listProduct[index].title),
                            subtitle: Text(listProduct[index].price + " USD"),
                            isThreeLine: true,
                          ),
                        );
                      },
                    );
          }
        },
      ),
    );
  }
}
