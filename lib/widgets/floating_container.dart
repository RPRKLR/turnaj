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
      height: 450,
      width: 450,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(15)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'NEJBLIŽŠI TURNAJ',
                  style: TextStyle(
                    color: Color(0xFF8D8D8D),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'TURNAJ 22',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'So 07. 07. 2022 v 19:00',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Vice informaci o turnaji >',
                  style: TextStyle(
                    color: Color(0xFFFFD302),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Positioned(
              top: 160,
              child: Column(
                children: [
                  const Text(
                    'Date Shower',
                    style: TextStyle(
                      color: Color(0xFFFFD302),
                    ),
                  ), // this should be the date shower, I will make a widget for it
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(),
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
