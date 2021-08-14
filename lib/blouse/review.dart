import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quikieappps1/assets/colors.dart';


class review extends StatefulWidget {
  @override
  reviewState createState() => reviewState();
}

class reviewState extends State<review> {
  int _index;

  Widget appBar() {

    return Column(
      children: [
        SizedBox(height: 35),
        Row(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 15,
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Customer Name",
                      style: TextStyle(
                          color:Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                  SizedBox(height: 4),
                  Row(children:[
                    Text("Mobile:",
                        style: TextStyle(
                            color: Color.fromRGBO(145, 144, 154,10),
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                  Text(" +91 99999 999999",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),]),
                  SizedBox(height: 5),
                  Row(children:[
                    Text("Bill No:",
                        style: TextStyle(
                            color: Color.fromRGBO(145, 144, 154,10),
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                    Text("4232",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),]),
                  SizedBox(height: 5),
                  Row(children:[
                    Text("Date Of Delivery :",
                        style: TextStyle(
                            color: Color.fromRGBO(145, 144, 154,10),
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                    Text("05 May 2021",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),]),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text("Order Type : ",
                          style: TextStyle(
                              color: Color.fromRGBO(151,151,151,10),
                              fontSize: 12,
                              fontWeight: FontWeight.w400)),
                      Text("Hand work Blouse",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400)),

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width:70),
            Padding(
              padding: EdgeInsets.only(left: 70),
              child: Container(
                  width: 82.0,
                  height: 82.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                    color: Color.fromRGBO(244, 248, 252,10)

                      )
                  )),

          ],
        ),
        /*Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
          child: Divider(thickness: 1.5,color: Color.fromRGBO(176,176,176,10),),
        ),*/
        Container(decoration: BoxDecoration(
            color:Color.fromRGBO(60,60,61,10),
        border: Border.all(
             color: Color.fromRGBO(176,176,176,10),
             width: 1,
    )
        ),

            child:Column(children:[
              SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              categories("Order No : 01"),
              categories("Order No : 02"),
              categories("Order No : 03"),
              categories("Order No : 04"),
            ],
          ),
        ),
              SizedBox(height: 9,),
            ])),
      ],
    );
  }
  Widget picWithHead(String head, String subHead) {
    return Flexible(
      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              head,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: primaryColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Text(
                subHead,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 8, fontWeight: FontWeight.w400, color: labelGrey),
              ),
            ),
            Container(
              height: 124,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(196, 196, 196, 1),
                  borderRadius: BorderRadius.circular(20)),
            )
          ],
        ),
      ),
    );
  }
  Widget imageContainer(bool top, bool left) {
    return Container(
      child: Expanded(
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Color.fromRGBO(60,60,61,10),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(top && left ? 20 : 0),
                bottomLeft: Radius.circular(!top && left ? 20 : 0),
                topRight: Radius.circular(top && !left ? 20 : 0),
                bottomRight: Radius.circular(!top && !left ? 20 : 0),
              ),
            ),
            child: Center(
              child: Icon(
                Icons.camera_alt_outlined,
                size: 40,
                color: textColor,
              ),
            ),
          ),
          Container(
              height: 28,
              decoration: BoxDecoration(
                color: labelGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(!top && left ? 20 : 0),
                  bottomRight: Radius.circular(!top && !left ? 20 : 0),
                ),
              ),
              child: Row(
                children: [
                  Expanded(child: SizedBox()),
                  Text(
                    "Front Neck Design",
                    style: TextStyle(color: textColor, fontSize: 12),
                  ),
                  Expanded(child: SizedBox()),
                ],
              ))
        ]),
      ),
    );
  }
  Widget selectedImage(bool top) {
    return Row(
      children: [
        imageContainer(top, true),
        SizedBox(width: 5),
        imageContainer(top, false)
      ],
    );
  }

  Widget categories(String text) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(48),
            border: Border.all(color: Colors.white)),
        child: Text(
          text,
          style: TextStyle(fontSize: 15, color: Color.fromRGBO(60,60,61,10),fontWeight: FontWeight.w500),
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF3F7FB),
        body: Container(
        child: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(color: Color.fromRGBO(3,43,119,10),
          child:appBar(),),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 11, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            selectedImage(true),
                            SizedBox(height: 5),
                            selectedImage(false)
                          ],
                        ),
                      ),
                      SizedBox(height: 17,
                      ),
                      Text("Customer Measurement",style: TextStyle(color: Color.fromRGBO(151,151,151,10),fontSize: 15,
                        fontWeight: FontWeight.w400)),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          picWithHead('HANGINGS',
                              ''),
                          picWithHead('DRAWING PAD',
                              '')
                        ],
                      ),


    ]))]
        ))
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

            // Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: DailyLiaScreen()));
          }
          if (val == 1) {

            // Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: MyHomePage()));
          }
          if (val == 1) {

            // Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: MyHomePage()));
          }


        },
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              title: Text(''),
              icon: Image.asset('assets/images/Group 1069.png')),
          BottomNavigationBarItem(
              title: Text(''),
              icon: Image.asset('assets/images/Group 1068.png')),



          BottomNavigationBarItem(
            icon: Image.asset('assets/images/Group 1067.png'),
            title: Text(''),

          ),


          //FloatingNavbarItem(icon: Icons.help_outline_rounded, title: 'Help Desk'),


        ],
      ),);

  }
}