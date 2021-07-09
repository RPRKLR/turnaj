import 'package:flutter/material.dart';

class FloatingContainer extends StatefulWidget {
  const FloatingContainer(
    this.endDate,
    this.moreButtonText,
    this.turnajName,
  ) : super();

  final DateTime endDate;
  final String turnajName;
  final String moreButtonText;

  @override
  _FloatingContainerState createState() => _FloatingContainerState();
}

class _FloatingContainerState extends State<FloatingContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'NEJBLIŽŠI TURNAJ',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'TURNAJ 22',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'So 07. 07. 2022 v 19:00',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Vice informaci o turnaji >',
                  style: TextStyle(
                    color: Colors.yellow,
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Positioned(
              top: 130,
              child: Column(
                children: [
                  const Text(
                      'Date Shower'), // this should be the date shower, I will make a widget for it
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Koupit ZZP'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Vstupenky'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
