import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quikieappps1/assets/colors.dart';

import '../measurement.dart';

class After_Selection_image extends StatefulWidget {
  @override
  After_Selection_imageState createState() => After_Selection_imageState();
}

class After_Selection_imageState extends State<After_Selection_image> {
  int _index;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF4F8FC),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(60, 60, 61, 10),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Container(
              height: height * 0.5,
              width: width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(60, 60, 61, 10),
              ),
            ),
            Container(
              height: height * 0.15,
              width: width,
              decoration:
                  BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'V Neck With Dress Design',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: height * 0.05,
                    width: width * 0.2,
                    decoration: BoxDecoration(color: Color(0xff032B77), borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'Select',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ),
                  Text(
                    'Select Design to Stitch Order',
                    style: TextStyle(color: Color(0xff979797), fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.1,
              width: width,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(height: height*0.1,child: Image.asset('assets/images/Previous.png')),
                  Container(
                    height: height*0.1,
                    child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                      FloatingActionButton(
                        backgroundColor: Color.fromRGBO(3, 43, 119, 10),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      Text("Upload Your Photo")
                    ]),
                  ),
                  Container(
                    height: height*0.1,child: Image.asset('assets/images/Group 416.png')),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          design("Scrlet Blouse Design"),
                          design("Scrlet Blouse Design"),
                          design("Scrlet Blouse Design")
                        ],
                      ),
                    ),
                    SizedBox(width: 6),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          designSmall("Scrlet Blouse Design"),
                          design("Scrlet Blouse Design"),
                          design("Scrlet Blouse Design"),
                          SizedBox(height: 50)
                        ],
                      ),
                    )
                  ],
                ),
              )
          ]),
        ),
      ),
   
    );
  }


 Widget design(String text) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>After_Selection_image()));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: darkGrey),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 5, bottom: 10),
            child: Text(
              text,
              style: TextStyle(fontSize: 10),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }

  Widget designSmall(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 195,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: darkGrey),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2, left: 5, bottom: 10),
          child: Text(text, style: TextStyle(fontSize: 10)),
        )
      ],
    );
  }
}