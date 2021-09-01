import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quikieappps1/assets/colors.dart';

import 'package:quikieappps1/blouse/design/after_selection.dart';
import 'package:quikieappps1/blouse/measurement.dart';
import 'package:quikieappps1/blouse/design/select_back_design.dart';
import 'package:quikieappps1/screens/previewOrder.dart';

import 'package:quikieappps1/blouse/input_sample.dart';

class select_sleeve_design extends StatefulWidget {
  @override
  select_sleeve_designState createState() => select_sleeve_designState();
}

class select_sleeve_designState extends State<select_sleeve_design> {
  int _index;

  Widget categories(String text) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        decoration: BoxDecoration(
            color: Color.fromRGBO(55, 55, 55, 1),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: labelGrey)),
        child: Text(
          text,
          style: TextStyle(fontSize: 15, color: Colors.white),
        ));
  }

  Widget imageContainer(String text) {
    return Container(
      child: Expanded(
        child: Stack(alignment: Alignment.topRight, children: [
          Stack(alignment: Alignment.bottomCenter, children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 3),
              height: 180,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(180, 180, 180, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Icon(
                  Icons.photo,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 3),
                height: 42,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(child: SizedBox()),
                    Text(
                      text,
                      style: TextStyle(
                          color: textColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    Expanded(child: SizedBox()),
                  ],
                ))
          ]),
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Icon(Icons.close, size: 15, color: Colors.white),
          )
        ]),
      ),
    );
  }

  Widget design(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: darkGrey),
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
    );
  }

  Widget designSmall(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 195,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: darkGrey),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2, left: 5, bottom: 10),
          child: Text(text, style: TextStyle(fontSize: 10)),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: primaryColor,
                child: Column(
                  children: [
                    SizedBox(height: 35),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                          onPressed: () {
                            Navigator.pop(context, true);
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: [
                              Text("Select Sleeve Design",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(height: 5),
                              Center(
                                child: Text("Select Design or Upload Your Own",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 8,
                                        fontWeight: FontWeight.w300)),
                              ),
                              SizedBox(height: 5),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 32,
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(47),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          categories("Boat Neck"),
                          categories("High Neck"),
                          categories("U Neck"),
                          categories("Collar"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    imageContainer("Front Design"),
                    imageContainer("Back Design"),
                    imageContainer("Sleeve Design"),
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

                    GestureDetector(onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => After_Selection_image()),
              );
              },
                child: design("Scrlet Blouse Design"),),
          GestureDetector(onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => After_Selection_image()),
            );
          },
            child:design("Scrlet Blouse Design"),),
          GestureDetector(onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => After_Selection_image()),
            );
          },
            child:design("Scrlet Blouse Design")),
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
            ],
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.white,
        selectedItemColor: Color.fromRGBO(69, 89, 210, 10),
        unselectedItemColor: Colors.black54,
        onTap: (int val) {
          setState(() {
            _index = val;
          });

          if (val == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => select_back_design()),
            );
            // Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: DailyLiaScreen()));
          }
          if (val == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PreviewOrders()),
            );
            // Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: MyHomePage()));
          }


        },
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              title: Text(''),
              icon: Image.asset('assets/images/Previous.png')),



          BottomNavigationBarItem(
            icon: Image.asset('assets/images/Group 416 (1).png'),
            title: Text(''),

          ),


          //FloatingNavbarItem(icon: Icons.help_outline_rounded, title: 'Help Desk'),


        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 50),

          child:
          Column(mainAxisAlignment: MainAxisAlignment.end,
              children:[ FloatingActionButton(
                backgroundColor: Color.fromRGBO(3,43,119,10),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Icon(Icons.add,color: Colors.white,),
              ),
                Text("Upload Your Photo")


              ])),
    );
  }
}
