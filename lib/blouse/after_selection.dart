import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class After_Selection_image extends StatefulWidget {
  @override
  After_Selection_imageState createState() => After_Selection_imageState();
}

class After_Selection_imageState extends State<After_Selection_image> {

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child:Column(
          children:[
            Container(height: height * 0.5,
              width: width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(60,60,61,10),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(35.0),
                ),
              ),),
          ]
        )
      ),


    );





  }
}