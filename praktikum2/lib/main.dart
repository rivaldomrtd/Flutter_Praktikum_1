import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum PTM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '1461900135-RivaldoMartaDinata-Sore'),
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
  int a = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 120,
              child: ListView.builder(
                  itemExtent: 100,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) => Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(12.0),
                        child: Text(
                          'PTM $index',
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                        ),
                      ),
                  itemCount: 20),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, childAspectRatio: 1, mainAxisSpacing: 10),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                      left: 12, bottom: 10, top: 5, right: 12),
                  child: Text(
                    'Pagi $index',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                );
              },
              childCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
