import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left: 60)),
            Container(
              height: 32.0,
              width: 32.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/1.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
            Container(
                padding: const EdgeInsets.all(8.0), child: Text('E-Commerce'))
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 15, left: 12),
                  width: 100,
                  height: 50,
                  child: Text(
                    "Menu",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 120,
              child: ListView(
                itemExtent: 100,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(12.0),
                    child: IconButton(
                      icon: const Icon(Icons.male),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(12.0),
                    child: IconButton(
                      icon: const Icon(Icons.female),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(12.0),
                    child: IconButton(
                      icon: const Icon(Icons.shopping_cart),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(12.0),
                    child: IconButton(
                      icon: const Icon(Icons.delivery_dining),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 15, left: 20),
                  width: 150,
                  height: 50,
                  child: Text(
                    "Best Seller",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 2,
            childAspectRatio: 1,
            mainAxisSpacing: 10,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  print("Container clicked");
                },
                child: new Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                      left: 12, bottom: 10, top: 5, right: 12),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/baju.jpg')),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.redAccent,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Container clicked");
                },
                child: new Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                      left: 12, bottom: 10, top: 5, right: 12),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/baju2.jpg')),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.redAccent,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Container clicked");
                },
                child: new Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                      left: 12, bottom: 10, top: 5, right: 12),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/sepatu.jpg')),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.redAccent,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Container clicked");
                },
                child: new Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                      left: 12, bottom: 10, top: 5, right: 12),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/sepatu2.jpg')),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.redAccent,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Container clicked");
                },
                child: new Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                      left: 12, bottom: 10, top: 5, right: 12),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/women.jpg')),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.redAccent,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Container clicked");
                },
                child: new Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                      left: 12, bottom: 10, top: 5, right: 12),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/women2.jpg')),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.redAccent,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
