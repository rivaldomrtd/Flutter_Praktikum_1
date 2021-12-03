import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Page5 extends StatefulWidget {
  @override
  _Page5 createState() => _Page5();
}

class _Page5 extends State<Page5> {
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
        body: SingleChildScrollView(
            padding: EdgeInsets.only(top: 30, bottom: 30, left: 60, right: 60),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 250.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/women.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 15)),
                Text(
                  "Women",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(bottom: 15)),
                Text(
                  "jhsadjhdhsakjhdksajhkjdhasjhdkjsahdkjhaskjdhkjsahkdjhaskjhdkjsahdkjhaskjhdkjsahdkjhaskjhdkjashdkjsdaasdasdasdas",
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.black,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ))));
  }
}
