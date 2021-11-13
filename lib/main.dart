import 'dart:math';

import 'package:jc_reto_semana_10/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: FirstRoute(),
    );
  }
}

class FirstRoute extends StatelessWidget {
  final rnd = new Random();

  final List<Color> colores = [
    Colors.red,
    Colors.redAccent,
    Colors.blue,
    Colors.black,
    Colors.amberAccent,
    Colors.yellowAccent,
    Colors.yellow,
    Colors.blueAccent,
    Colors.grey,
    Colors.blueGrey,
    Colors.green,
    Colors.greenAccent,
  ];
  @override
  Widget build(BuildContext context) {
    final List<Widget> items = List.generate(
        100,
        (i) => Container(
              width: double.infinity,
              height: 150.0,
              color: colores[rnd.nextInt(this.colores.length)],
            ));
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            title: Text(
              'SliverAppBar',
            ),
            centerTitle: true,
            expandedHeight: 200.0,
            flexibleSpace: Image.network(
                "https://weloversize.com/wp-content/uploads/2020/08/shutterstock_1805348128.jpg",
                fit: BoxFit.cover),
          ),
          SliverList(
            delegate: SliverChildListDelegate(items),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
          );
        },
      ),
    );
  }
}
