import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Video extends StatelessWidget {
  String typeOfVideo;
  String title;
  String premium;

  Video(this.title, this.typeOfVideo, this.premium);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
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
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.grey,
                  ),
                  child: Text(
                    premium,
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontFamily: 'Silka',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                top: 10,
                right: 20,
              ),
              Positioned(
                child: const FaIcon(FontAwesomeIcons.play),
                top: 125,
                right: 200,
              ),
            ],
          ),
          Text(
            typeOfVideo,
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
