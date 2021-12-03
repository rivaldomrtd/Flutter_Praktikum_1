import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Page6 extends StatefulWidget {
  @override
  _Page6 createState() => _Page6();
}

class _Page6 extends State<Page6> {
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
                      image: AssetImage('images/women2.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 15)),
                Text(
                  "Women-2",
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
