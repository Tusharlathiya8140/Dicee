import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'third_app',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var dice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Dicee',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontFamily: 'Pangolin'),
          ),
        ),
        backgroundColor: Colors.red[200],
        body: GestureDetector(
          onTap: () {
            setState(() {
              dice = Random().nextInt(5) + 1;
            });
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(image: AssetImage('images/dice${dice}.png')),
            ),
          ),
        ));
  }
}
