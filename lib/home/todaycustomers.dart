import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Todaycustomers extends StatelessWidget {
  double width, height = 57.0;
  double customFontSize = 12;
  String defaultFontFamily = 'Roboto-Light.ttf';

  @override
  Widget build(BuildContext context) {
    return Container(height: 100,
      width: MediaQuery.of(context).size.width,
    child:
    ListView(
        scrollDirection: Axis.horizontal,

        children: <Widget>[
          Column(
            children: <Widget>[

              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color.fromRGBO(233, 134, 187, 1)
                ),
                child: RawMaterialButton(
                  onPressed: () {},
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                "Add Customers",
                style: TextStyle(
                    color: Color(0xFF969696),
                    fontFamily: 'Roboto-Light.ttf',
                    fontSize: customFontSize),
              )
            ],
    ),
          Column(
            children: <Widget>[
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color.fromRGBO(255, 193, 168, 10),
    ),
                child: RawMaterialButton(
                  onPressed: () {},
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.person,
                    color: Color(0xFFAB436B),
                  ),
                ),
              ),
              Text(
                "Aruna",
                style: TextStyle(
                    color: Color(0xFF969696),
                    fontFamily: 'Roboto-Light.ttf',
                    fontSize: customFontSize),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color.fromRGBO(188, 222, 255, 10)),
                child: RawMaterialButton(
                  onPressed: () {},
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.person,
                    color: Color(0xFFAB436B),
                  ),
                ),
              ),
              Text(
                "Nalini",
                style: TextStyle(
                    color: Color(0xFF969696),
                    fontFamily: 'Roboto-Light.ttf',
                    fontSize: customFontSize),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color.fromRGBO(244, 236, 156, 10)),
                child: RawMaterialButton(
                  onPressed: () {},
                  shape: CircleBorder(),
                  child: Icon(
                    FontAwesomeIcons.user,
                    color: Color(0xFFC1A17C),
                  ),
                ),
              ),
              Text(
                "Lakshmi",
                style: TextStyle(
                    color: Color(0xFF969696),
                    fontFamily: defaultFontFamily,
                    fontSize: customFontSize),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFF2F3F7)),
                child: RawMaterialButton(
                  onPressed: () {},
                  shape: CircleBorder(),
                  child: Icon(
                    FontAwesomeIcons.user,
                    color: Color(0xFF5EB699),
                  ),
                ),
              ),
              Text(
                "Rekha",
                style: TextStyle(
                    color: Color(0xFF969696),
                    fontFamily: defaultFontFamily,
                    fontSize: customFontSize),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color:  Color.fromRGBO(244, 236, 156, 10)),
                child: RawMaterialButton(
                  onPressed: () {},
                  shape: CircleBorder(),
                  child: Icon(
                    FontAwesomeIcons.user,
                    color: Color(0xFF4D9DA7),
                  ),
                ),
              ),
              Text(
                "Vijaya",
                style: TextStyle(
                    color: Color(0xFF969696),
                    fontFamily: defaultFontFamily,
                    fontSize: customFontSize),
              )
            ],
          )
        ],
      ),
    );
  }
}