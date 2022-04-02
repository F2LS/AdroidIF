import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MODO ESCURO
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData.from(
      //   colorScheme: ColorScheme.dark(),
      // ),

      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as you want
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Confeitaria App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.pink),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket, color: Colors.pink),
            label: 'Cesta',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket, color: Colors.pink),
            label: 'Favoritos',
          ),
        ],
      ),
      body: Column(children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
                padding: EdgeInsets.all(15),
              ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
              ),
              Image(
                image: AssetImage('img/donut_circle.png'),
              ),
            ],
          ),
          Padding(
                padding: EdgeInsets.all(15),
              ),
          Expanded(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
              ),
              Text(
                'Os Donuts são recheados e polvilhados com doces.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ],
          )),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
                padding: EdgeInsets.all(15),
              ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
              ),
              Image(
                image: AssetImage('img/froyo_circle.png'),
              ),
            ],
          ),
          Padding(
                padding: EdgeInsets.all(15),
              ),
          Expanded(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
              ),
              Text(
                'FroYo é um iogurte congelado self-service premium.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ],
          )),
        ],
    ),
    Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
                padding: EdgeInsets.all(15),
              ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
              ),
              Image(
                image: AssetImage('img/icecream_circle.png'),
              ),
            ],
          ),
          Padding(
                padding: EdgeInsets.all(15),
              ),
          Expanded(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
              ),
              Text(
                'Sanduíches de sorvete com bolachas de chocolate e recheio de baunilha.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ],
          )),
        ],
      ),
     ], ),
    );
  }
}
