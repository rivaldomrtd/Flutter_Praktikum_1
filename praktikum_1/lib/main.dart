// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '1461900135-Rivaldo Marta Dinata-SORE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _iconColor = Colors.orange;
  @override
  void initState() {
    super.initState();
    _iconColor;
  }

  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(bottom: 40)),
                SizedBox(
                  width: 250,
                  height: 250,
                  child: Image.network(
                      'https://avatars.githubusercontent.com/u/63405585?v=4'),
                ),
                Padding(padding: EdgeInsets.only(bottom: 30)),
                Text(
                  'Instagram : @rivaldo.martadinata',
                  style: TextStyle(fontSize: 17),
                ),
                Padding(padding: EdgeInsets.only(bottom: 50)),
                Icon(Icons.favorite, color: _iconColor),
                Padding(padding: EdgeInsets.only(bottom: 30)),
                ElevatedButton(
                  style: style,
                  onPressed: () {
                    setState(() {
                      _iconColor = _iconColor == Colors.orange
                          ? Colors.grey
                          : Colors.orange;
                    });
                  },
                  child: const Text('Ubah Warna'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
