import 'package:flutter/material.dart';

class Player extends StatelessWidget {
  String name;
  String position;

  Player(this.name, this.position);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                '../../assets/images/player.jpg',
                height: 250,
                width: 150,
              ),
            ),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Color(0xFFFFFFFF),
              ),
            ),
            Text(
              position,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
                color: Color(0xFF8D8D8D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
