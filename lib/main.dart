import 'package:flutter/material.dart';

import './widgets/player.dart';
import './widgets/video.dart';
import './widgets/floating_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turnaj',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x161616),
      appBar: AppBar(),
      body: Container(
        child: FloatingContainer(DateTime.now(), '', ''),
      ),
      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   children: [
      //     Video('Premium', 'Turnaj 20', 'souboj o trun'),
      //     Video('Premium', 'Turnaj 20', 'souboj o trun'),
      //     Video('Premium', 'Turnaj 20', 'souboj o trun'),
      //   ],
      // ),
    );
  }
}
