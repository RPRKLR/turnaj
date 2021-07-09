import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  String typeOfVideo;
  String title;
  String premium;

  Video(this.title, this.typeOfVideo, this.premium);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.topEnd,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                '../../assets/images/tournament.jpg',
                width: 400,
                height: 250,
              ),
            ),
            Positioned(
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.grey,
                ),
                child: Text(
                  premium,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              top: 10,
              right: 20,
            ),
            Positioned(
              child: const Icon(Icons.play_arrow),
              top: 125,
              right: 200,
            ),
          ],
        ),
        Text(
          typeOfVideo,
          textAlign: TextAlign.left,
        ),
        Text(title),
      ],
    );
  }
}
