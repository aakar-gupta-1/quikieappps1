import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quikieappps1/assets/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quikieappps1/bill/generatedbill.dart';
import 'package:quikieappps1/home/popularmenu.dart';
import 'package:quikieappps1/screens/previewOrder.dart';

class PlaceOrder extends StatefulWidget {
  @override
  _PlaceOrderState createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  bool container = false;
  int newContainer = 0;

  showModel() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return SafeArea(
            child: Container(
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      child: Tabview(),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

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
                      style: TextStyle(color: primaryColor, fontSize: 25, fontWeight: FontWeight.w600)),
                  SizedBox(height: 5),
                  Text("Basaveshwarangar,Bangalore",
                      style: TextStyle(color: grey, fontSize: 18, fontWeight: FontWeight.w500)),
                  SizedBox(height: 2),
                  Text("E-Mail : boutiname@gmail.com",
                      style: TextStyle(color: grey, fontSize: 15, fontWeight: FontWeight.w500)),
                  SizedBox(height: 5),
                  Text("Mobile No : +91 99999 99999",
                      style: TextStyle(color: grey, fontSize: 15, fontWeight: FontWeight.w500)),
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
        decoration:
            BoxDecoration(color: select ? Colors.white : secondaryColor, borderRadius: BorderRadius.circular(16)),
        margin: EdgeInsets.symmetric(horizontal: 6),
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              day,
              style: select
                  ? TextStyle(color: Color.fromRGBO(167, 167, 167, 1), fontSize: 12, fontWeight: FontWeight.w500)
                  : TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              date.toString(),
              style: select
                  ? TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500)
                  : TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF3F7FB),
        body: Stack(alignment: Alignment.topLeft, children: [
          Container(
              child: SingleChildScrollView(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(child: appBar()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Text("Customer Details", style: TextStyle(color: grey, fontSize: 15, fontWeight: FontWeight.w400)),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 11, vertical: 8),
              height: 75,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("CUSTOMER NAME",
                            style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600)),
                        Divider(
                          color: Colors.black,
                          thickness: 0.5,
                        ),
                        Text("Mobile No:  +91 99999 99999",
                            style: TextStyle(
                                color: Color.fromRGBO(102, 102, 102, 1), fontSize: 13, fontWeight: FontWeight.w500)),
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
                  style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600),
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
                      style: TextStyle(color: grey, fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Text(
                            "April",
                            style: TextStyle(color: grey, fontSize: 15, fontWeight: FontWeight.w600),
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
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
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
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Divider(thickness: 1.5),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Items",
                  style: TextStyle(color: labelGrey, fontSize: 15, fontWeight: FontWeight.w600),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 16, right: 14, bottom: 4),
              child: Stack(alignment: Alignment.center, children: [
                Container(
                  child: Column(children: [
                    Container(
                      height: 120,
                      child: Row(
                        children: [
                          Image.asset("assets/images/Customer Fabric Photo.png"),
                          Expanded(
                              child: Container(
                            child: Row(
                              children: [
                                Expanded(
                                    child: Container(
                                  padding: EdgeInsets.only(top: 10, left: 12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Description",
                                        style: TextStyle(color: labelGrey1, fontSize: 12, fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "Handwork Blouse",
                                        style:
                                            TextStyle(color: secondaryColor, fontSize: 15, fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: 17),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                "Price",
                                                style: TextStyle(
                                                    color: labelGrey1, fontSize: 12, fontWeight: FontWeight.w500),
                                              ),
                                              Text(
                                                "900",
                                                style: TextStyle(
                                                    color: secondaryColor, fontSize: 18, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                          Expanded(child: SizedBox()),
                                          Column(
                                            children: [
                                              Text(
                                                "Quantity",
                                                style: TextStyle(
                                                    color: labelGrey1, fontSize: 12, fontWeight: FontWeight.w500),
                                              ),
                                              Row(
                                                children: [
                                                  SvgPicture.asset("assets/images/Minus circle.svg",
                                                      height: 12, width: 12, color: secondaryColor),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                                    child: Text(
                                                      "4",
                                                      style: TextStyle(
                                                          color: secondaryColor,
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w600),
                                                    ),
                                                  ),
                                                  SvgPicture.asset("assets/images/Add circle.svg",
                                                      height: 12, width: 12, color: secondaryColor),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Expanded(child: SizedBox()),
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/Delete.svg",
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => PreviewOrders()));
                                        },
                                        child: SvgPicture.asset(
                                          "assets/images/Edit Order.svg",
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            newContainer = newContainer + 1;
                                          });
                                        },
                                        child: SvgPicture.asset(
                                          "assets/images/Duplicate.svg",
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
                    ),
                    (newContainer == 0)
                        ? Container()
                        : Container(
                            height: 600,
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: newContainer,
                                itemBuilder: (context, index) {
                                  return (index < 30)
                                      ? Container(
                                          margin: EdgeInsets.symmetric(vertical: 5),
                                          height: 135,
                                          child: Row(
                                            children: [
                                              Image.asset("assets/images/Customer Fabric Photo.png"),
                                              Expanded(
                                                  child: Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        child: Container(
                                                      padding: EdgeInsets.only(top: 10, left: 12),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text(
                                                            "Description",
                                                            style: TextStyle(
                                                                color: labelGrey1,
                                                                fontSize: 12,
                                                                fontWeight: FontWeight.w500),
                                                          ),
                                                          Text(
                                                            "Handwork Blouse",
                                                            style: TextStyle(
                                                                color: secondaryColor,
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w600),
                                                          ),
                                                          SizedBox(height: 17),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                              Column(
                                                                children: [
                                                                  Text(
                                                                    "Price",
                                                                    style: TextStyle(
                                                                        color: labelGrey1,
                                                                        fontSize: 12,
                                                                        fontWeight: FontWeight.w500),
                                                                  ),
                                                                  Text(
                                                                    "900",
                                                                    style: TextStyle(
                                                                        color: secondaryColor,
                                                                        fontSize: 18,
                                                                        fontWeight: FontWeight.w500),
                                                                  ),
                                                                ],
                                                              ),
                                                              Expanded(child: SizedBox()),
                                                              Column(
                                                                children: [
                                                                  Text(
                                                                    "Quantity",
                                                                    style: TextStyle(
                                                                        color: labelGrey1,
                                                                        fontSize: 12,
                                                                        fontWeight: FontWeight.w500),
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      SvgPicture.asset("assets/images/Minus circle.svg",
                                                                          height: 12, width: 12, color: secondaryColor),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.symmetric(horizontal: 5),
                                                                        child: Text(
                                                                          "4",
                                                                          style: TextStyle(
                                                                              color: secondaryColor,
                                                                              fontSize: 18,
                                                                              fontWeight: FontWeight.w600),
                                                                        ),
                                                                      ),
                                                                      SvgPicture.asset("assets/images/Add circle.svg",
                                                                          height: 12, width: 12, color: secondaryColor),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              Expanded(child: SizedBox()),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    )),
                                                    Padding(
                                                      padding: const EdgeInsets.only(right: 5),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                newContainer = newContainer - 1;
                                                              });
                                                            },
                                                            child: SvgPicture.asset(
                                                              "assets/images/Delete.svg",
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder: (context) => PreviewOrders()));
                                                            },
                                                            child: SvgPicture.asset(
                                                              "assets/images/Edit Order.svg",
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                newContainer = newContainer + 1;
                                                              });
                                                            },
                                                            child: SvgPicture.asset(
                                                              "assets/images/Duplicate.svg",
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ))
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
                                        )
                                      : Container();
                                }),
                          ),
                    SizedBox(height: 5),
                    Container(
                      height: 105,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sub Total",
                                style: TextStyle(color: labelGrey, fontSize: 12, fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Text(
                                  "₹ 3600.00",
                                  style: TextStyle(
                                      color: Color.fromRGBO(171, 183, 208, 1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 2),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Grand Total",
                                style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "₹ 3600.00",
                                style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                ),
                Positioned(
                  bottom: 90,
                  child: InkWell(
                    onTap: () {
                      showModel();
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 7, bottom: 7, left: 14, right: 25),
                      height: 37,
                      width: 160,
                      decoration: BoxDecoration(color: secondaryColor, borderRadius: BorderRadius.circular(26)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/images/Add circle.svg",
                            color: Colors.white,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Add Items",
                            style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            GestureDetector(
              // behavior: HitTestBehavior.translucent,
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    PageTransition(
                        duration: Duration(milliseconds: 300),
                        type: PageTransitionType.leftToRight,
                        child: GeneratedBill()),
                    ModalRoute.withName(""));
              },
              child: Container(
                margin: EdgeInsets.all(15),
                height: 55,
                decoration: BoxDecoration(color: primaryColor, borderRadius: BorderRadius.all(Radius.circular(33))),
                child: Row(
                  children: [
                    Expanded(child: SizedBox()),
                    Text(
                      "Generate Bill",
                      style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    Expanded(child: SizedBox()),
                  ],
                ),
              ),
            )
          ]))),
          GestureDetector(
            // behavior: HitTestBehavior.translucent,
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  PageTransition(
                      duration: Duration(milliseconds: 300),
                      type: PageTransitionType.leftToRight,
                      child: PreviewOrders()),
                  ModalRoute.withName(""));
            },
            child: Container(
              padding: EdgeInsets.only(top: 50, left: 15),
              child: Icon(
                Icons.arrow_back_ios,
                color: primaryColor,
              ),
            ),
          ),
        ]));
  }
}

