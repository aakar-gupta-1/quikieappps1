import 'package:flutter/material.dart';
import 'package:quikieappps1/assets/colors.dart';

class PlaceOrder extends StatelessWidget {
  Widget appBar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 35),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset("assets/images/Butique Profile.png"),
                  ),
                  SizedBox(height: 5),
                  Text("BOUTIQUE NAME",
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w600)),
                  SizedBox(height: 5),
                  Text("Basaveshwarangar,Bangalore",
                      style: TextStyle(
                          color: grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: 2),
                  Text("E-Mail : boutiname@gmail.com",
                      style: TextStyle(
                          color: grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: 5),
                  Text("Mobile No : +91 99999 99999",
                      style: TextStyle(
                          color: grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Divider(thickness: 1.5),
        ),
      ],
    );
  }

  Widget date(String day, int date, bool select) {
    return Container(
        decoration: BoxDecoration(
            color: select ? Colors.white : secondaryColor,
            borderRadius: BorderRadius.circular(16)),
        margin: EdgeInsets.symmetric(horizontal: 6),
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              day,
              style: select
                  ? TextStyle(
                      color: Color.fromRGBO(167, 167, 167, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w500)
                  : TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              date.toString(),
              style: select
                  ? TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500)
                  : TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: Column(
          children: [
            Stack(alignment: Alignment.topLeft, children: [
              Container(
                  child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                    Center(child: appBar()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26),
                      child: Text("Customer Details",
                          style: TextStyle(
                              color: grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w400)),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 11, vertical: 8),
                      height: 75,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("CUSTOMER NAME",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600)),
                                Divider(
                                  color: Colors.black,
                                  thickness: 0.5,
                                ),
                                Text("Mobile No:  +91 99999 99999",
                                    style: TextStyle(
                                        color: Color.fromRGBO(102, 102, 102, 1),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                          SizedBox(width: 14),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Image.asset(
                              "assets/images/Edit Button.png",
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Divider(thickness: 1.5),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Invoice No :  463",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: 9,
                          bottom: 5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery Date :",
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "April",
                                    style: TextStyle(
                                        color: grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: grey,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7, vertical: 5),
                        child: Row(
                          children: [
                            date("Sun", 20, true),
                            date("Mon", 21, false),
                            date("Tue", 22, true),
                            date("Wed", 23, true),
                            date("Thu", 24, true),
                            date("Fri", 25, true),
                            date("Sat", 25, true),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Divider(thickness: 1.5),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Items",
                          style: TextStyle(
                              color: labelGrey,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        )),
                    Container(
                      margin: EdgeInsets.all(15),
                      height: 55,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(33))),
                      child: Row(
                        children: [
                          Expanded(child: SizedBox()),
                          Text(
                            "Generate Bill",
                            style: TextStyle(
                                color: textColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                          Expanded(child: SizedBox()),
                        ],
                      ),
                    ),
                  ]))),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  print("hello");
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.only(top: 50, left: 15),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: primaryColor,
                  ),
                ),
              ),
            ]),
          ],
        ));
  }
}
