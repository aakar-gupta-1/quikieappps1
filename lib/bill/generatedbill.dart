import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:page_transition/page_transition.dart';
import 'package:quikieappps1/blouse/review.dart';

class GeneratedBill extends StatefulWidget {
  @override
  GeneratedBillState createState() => GeneratedBillState();
}

class GeneratedBillState extends State<GeneratedBill> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(3, 43, 119, 10),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.white),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ),
      backgroundColor: Color.fromRGBO(3, 43, 119, 10),
      body: SingleChildScrollView(
        child: Container(
          height: height * 1.4,
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  color: Color(0xffF3F7FB),
                  ),
                    child: Column(children: [
                  Container(
                    height: height*0.25,
                    width: MediaQuery.of(context).size.width - 10.0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 18),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 24.11, top: 0),
                                    child: Column(children: [
                                      Text(
                                        "Mobile",
                                        style: TextStyle(fontSize: 9),
                                      ),
                                      Text(
                                        "+91 99999 999999",
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    ])),
                                Container(
                                  child: Image.asset(
                                      "assets/images/Butique Profile.png"),
                                ),
                                SizedBox(
                                  width: 80,
                                )
                              ]),
                          SizedBox(height: 3),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text("BOUTIQUE NAME",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600)),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text("Address: Basaveshwarangar,Bangalore",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400)),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          color: Color(0xff032B77),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(20),
                                              bottomRight: Radius.circular(20))),
                                    ),
                                    DottedLine(
                                      direction: Axis.horizontal,
                                      lineLength: width/1.2,
                                      lineThickness: 1.0,
                                      dashLength: 4.0,
                                      dashColor: Colors.black,
                                      dashRadius: 0.0,
                                      dashGapLength: 4.0,
                                      dashGapColor: Colors.transparent,
                                      dashGapRadius: 0.0,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          color: Color(0xff032B77),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              bottomLeft: Radius.circular(20))),
                                    ),
                                  ],
                                ),
                              ]),
                        ]),
                  ),
                  Container(
                    height: height*0.6,
                      width: MediaQuery.of(context).size.width - 10.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text("RECEIPT",
                                  style: TextStyle(
                                      color: Color.fromRGBO(95, 93, 93, 10),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("To",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              3, 43, 119, 10),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)),
                                  Text("Date Of Order",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              151, 151, 151, 10),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                            Padding(
                               padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Customer Name",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                  Text("05 June 2021",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              60, 60, 61, 10),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: Text("Mobile No: 99999 99999",
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(151, 151, 151, 10),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                  "Address:Basaveshwarnangara, Bangalore",
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(151, 151, 151, 10),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400)),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("E-mail:customer@email.com",
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(151, 151, 151, 10),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400)),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 2.0,
                                dashLength: 4.0,
                                dashColor: Colors.black,
                                dashRadius: 0.0,
                                dashGapLength: 4.0,
                                dashGapColor: Colors.transparent,
                                dashGapRadius: 0.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Bill No:",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              151, 151, 151, 10),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500)),
                                  Text("DUE DATE",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              151, 151, 151, 10),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("324",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              3, 43, 119, 10),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600)),
                                  Text("12 June 2021",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              3, 43, 119, 10),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 2.0,
                                dashLength: 4.0,
                                dashColor: Colors.black,
                                dashRadius: 0.0,
                                dashGapLength: 4.0,
                                dashGapColor: Colors.transparent,
                                dashGapRadius: 0.0,
                              ),
                            ),
                            SizedBox(height: 5),
                            BillWidget(asset: 'assets/images/Rectangle 523.png',),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 5, bottom: 5),
                              child: DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 1.0,
                                dashLength: 4.0,
                                dashColor: Colors.grey,
                                dashRadius: 0.0,
                                dashGapLength: 4.0,
                                dashGapColor: Colors.transparent,
                                dashGapRadius: 0.0,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            BillWidget(asset: 'assets/images/Rectangle 524.png',),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 5, bottom: 5),
                              child: DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 1.0,
                                dashLength: 4.0,
                                dashColor: Colors.grey,
                                dashRadius: 0.0,
                                dashGapLength: 4.0,
                                dashGapColor: Colors.transparent,
                                dashGapRadius: 0.0,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            BillWidget(asset: 'assets/images/Rectangle 525.png',),
                            SizedBox(
                              height: 10,
                            ),
                          ])),
                ]))),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffF3F7FB),
                  ),
                  width: MediaQuery.of(context).size.width - 10.0,
                  child: Container(
                      child: Column(children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(104, 104, 104, 10)),
                        ),
                        Text(
                          '₹ 3490.00',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 10,
                            decoration: BoxDecoration(
                                color: Color(0xff032B77),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                          ),
                          DottedLine(
                            direction: Axis.horizontal,
                            lineLength: width/1.2,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor: Colors.black,
                            dashRadius: 0.0,
                            dashGapLength: 4.0,
                            dashGapColor: Colors.transparent,
                            dashGapRadius: 0.0,
                          ),
                          Container(
                            height: 20,
                            width: 10,
                            decoration: BoxDecoration(
                                color: Color(0xff032B77),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20))),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 10.0,
                      child: Container(
                          child: Column(children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Advance Payment',
                                style: TextStyle(
                                    color: Color(0xff686868),
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '₹ 2000.00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Balance',
                                style: TextStyle(
                                    color: Color(0xff686868),
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '₹ 1490.00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ), GestureDetector(
                      // behavior: HitTestBehavior.translucent,
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              PageTransition(
                                  duration:
                                  Duration(milliseconds: 300),
                                  type:
                                  PageTransitionType.leftToRight,
                                  child: Review()),
                              ModalRoute.withName(""));
                        },
                        child:
                         Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          height: 43,
                          width: 330,
                          decoration: BoxDecoration(
                              color: Color(0xff1170DE),
                              borderRadius: BorderRadius.circular(14)),
                          child: Center(
                              child: Text(
                            'View Order Detiles & Measurement',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )),
                        ))]),
                      ),
                    ),
                  ])),
                ),
              ]),
            ),
            Padding(
                padding: const EdgeInsets.all(1.0),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.share,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Share or Print",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                    ),
                  )
                ])),
            SizedBox(height: 5),
          ]),
        ),
      ),
      /*floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(1.0),
        child:Column(mainAxisAlignment: MainAxisAlignment.end,
            children:[
        FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(Icons.share,color: Colors.black,),

            onPressed: () {},

      ),Text("Share or Print",style:TextStyle(color: Colors.white,fontSize: 10,fontFamily: 'Poppins'),)])*/
    );
  }
}

class BillWidget extends StatelessWidget {
  final String asset;
  const BillWidget({
   this.asset, Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(5)),
                child: Image.asset(
                    asset)),
            Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Padding(
                     padding:
                        EdgeInsets.only(top: 5),
                    child: Text(
                      'Handwork Blouse',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight:
                              FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 5),
                    child: Text(
                      'Rs : 900',
                      style: TextStyle(
                          color: Color.fromRGBO(
                              151, 151, 151, 10),
                          fontSize: 8,
                          fontWeight:
                              FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 5),
                    child: Text(
                      'View Details',
                      style: TextStyle(
                          color: Color.fromRGBO(
                              17, 112, 222, 10),
                          fontSize: 10,
                          fontWeight:
                              FontWeight.w500),
                    ),
                  ),
                  Padding(
                     padding:
                        EdgeInsets.only(top: 5),
                    child: Text(
                      'Order No:  1 ',
                      style: TextStyle(
                          color: Color.fromRGBO(
                              151, 151, 151, 10),
                          fontSize: 8,
                          fontWeight:
                              FontWeight.w400),
                    ),
                  ),
                ]),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                'Qty:3',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                '2790.00',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ]),
    );
  }
}

class WeirdBorder extends ShapeBorder {
  final double radius;
  final double pathWidth;

  WeirdBorder({@required this.radius, this.pathWidth = 1});

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return Path()
      ..fillType = PathFillType.evenOdd
      ..addPath(getOuterPath(rect, textDirection: textDirection), Offset.zero);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) =>
      _createPath(rect);

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  @override
  ShapeBorder scale(double t) => WeirdBorder(radius: radius);

  Path _createPath(Rect rect) {
    final innerRadius = radius + pathWidth;
    final innerRect = Rect.fromLTRB(rect.left + pathWidth, rect.top + pathWidth,
        rect.right - pathWidth, rect.bottom - pathWidth);

    final outer = Path.combine(PathOperation.difference, Path()..addRect(rect),
        _createBevels(rect, radius));
    final inner = Path.combine(PathOperation.difference,
        Path()..addRect(innerRect), _createBevels(rect, innerRadius));
    return Path.combine(PathOperation.difference, outer, inner);
  }

  Path _createBevels(Rect rect, double radius) {
    return Path()
      ..addOval(
          Rect.fromCircle(center: Offset(rect.left, rect.top), radius: radius))
      ..addOval(Rect.fromCircle(
          center: Offset(rect.left + rect.width, rect.top), radius: radius))
      ..addOval(Rect.fromCircle(
          center: Offset(rect.left, rect.top + rect.height), radius: radius))
      ..addOval(Rect.fromCircle(
          center: Offset(rect.left + rect.width, rect.top + rect.height),
          radius: radius));
  }
}
