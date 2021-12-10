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
        backgroundColor: Colors.deepPurple[700],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left: 100)),
            Container(
              height: 32.0,
              width: 32.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
            Container(
                padding: const EdgeInsets.all(8.0), child: Text('VALDOOS-GAME'))
          ],
        ),
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
                      itemExtent: 100,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(12.0),
                            child: ListTile(
                              leading: Image.network(
                                listProduct[index].thumbnail,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                              title: Text(listProduct[index].title),
                              subtitle: Text(listProduct[index].genre),
                              isThreeLine: true,
                            ),
                          ),
                      itemCount: listProduct.length);
          }
        },
      ),
    );
  }
}
