import 'package:flutter/material.dart';

import './widgets/player.dart';
import './widgets/video.dart';
import './widgets/floating_container.dart';
import './widgets/background_and_floatinting_container_combined.dart';

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
        scaffoldBackgroundColor: Color(0x16161616),
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
      backgroundColor: const Color(0xFF161616),
      body: ListView(
        children: [
          BAFCC(),
          // Image.asset(
          //   '../../assets/images/tournament.jpg',
          //   height: 500,
          // ),
          // FloatingContainer(DateTime.now(), '', ''),
          Container(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Video('Premium', 'Turnaj 20', 'souboj o trun'),
                Video('Premium', 'Turnaj 20', 'souboj o trun'),
                Video('Premium', 'Turnaj 20', 'souboj o trun'),
              ],
            ),
          ),
          Container(
            height: 350,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Player('Peter Dvorak', 'Champion'),
                Player(
                  'Premium',
                  'Turnaj 20',
                ),
                Player(
                  'Rajcsányi Ladislav',
                  'Turnaj 20',
                ),
                Player(
                  'Premium',
                  'Turnaj 20',
                ),
              ],
            ),
          ),
        ],
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
