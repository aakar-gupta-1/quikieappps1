import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quikieappps1/blouse/review.dart';
import 'package:quikieappps1/customer/addcustomer.dart';
import 'package:quikieappps1/customer/selectcustomer.dart';
import 'package:quikieappps1/blouse/design/design.dart';
import 'package:quikieappps1/blouse/design/select_front_design.dart';
import 'package:quikieappps1/home/popularmenu.dart';
import 'package:quikieappps1/home/todaycustomers.dart';
import 'package:quikieappps1/blouse/input_sample.dart';
import 'package:quikieappps1/orders/orders.dart';
import 'package:quikieappps1/widgets/custom_bottom_navbar.dart';
import 'package:quikieappps1/assets/colors.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _currentPage = 0, _index = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffF4F8FC),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Boutique Name',
              style: TextStyle(
                  color: Color.fromRGBO(3, 43, 119, 10),
                  fontSize: 22.0,
                  fontFamily: 'Poppins'),
            ),
            Text(
              'Today Mon, 17 sep',
              style: TextStyle(
                  color: Color.fromRGBO(3, 43, 119, 10), fontSize: 14.0),
            )
          ],
        ),
        actions: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/profileimg.png'),
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xffF4F8FC),
        child: Stack(children: [
          SingleChildScrollView(
              child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                Container(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width,
                    child: InkWell(
                        child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                          color: Color.fromRGBO(132, 175, 255, 0.9),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11.0),
                          ),
                          child: Stack(children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Background Design.png"),
                                  alignment: Alignment.bottomRight,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.9, -0.85),
                              child: Text(
                                "Today",
                                style: TextStyle(
                                    color: Color.fromRGBO(3, 43, 119, 2),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.84, -0.5),
                              child: Text(
                                "Orders to Deliver",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.97, -0.55),
                              child: Text(
                                "10",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.84, -0.3),
                              child: Text(
                                "Pending Orders ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.95, -0.3),
                              child: Text(
                                "5 ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0.98, -0.9),
                              child: Text(
                                "Latest Designs",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9.0,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.9, 0.55),
                              child: Text(
                                "₹ 32,400",
                                style: TextStyle(
                                    color: Color.fromRGBO(3, 43, 119, 10),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.9, 0.85),
                              child: Text(
                                "Receivable Today",
                                style: TextStyle(
                                    color: Color.fromRGBO(3, 43, 119, 10),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Orders List.png"),
                                  alignment: Alignment(0.98, -0.7),
                                ),
                              ),
                            ),
                          ])),
                    ))),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          color: Color(0xffF4F8FC),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Today's Customer",
                                  style: TextStyle(
                                      fontSize: 19.0,
                                      fontFamily: 'Productsans',
                                      color: Colors.black87),
                                  overflow: TextOverflow.clip,
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'View All',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Productsans',
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(3, 49, 119, 10),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50, left: 10),
                        child: Todaycustomers(),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 150),
                          child: SizedBox(
                            height: height,
                            width: MediaQuery.of(context).size.width,
                            child: Tabview(),
                          )),
                    ]))
              ])))
        ]),
      ),
      bottomNavigationBar: FloatingNavbar(
        borderRadius: 12,
        backgroundColor: Colors.white,
        selectedItemColor: Color.fromRGBO(69, 89, 210, 10),
        unselectedItemColor: Colors.black54,
        onTap: (int val) {
          setState(() {
            _index = val;
          });

          if (val == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Orders()),
            );
            // Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: DailyLiaScreen()));
          }
          if (val == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Design()),
            );
            // Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: MyHomePage()));
          }

          if (val == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => review()),
            );
            // Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: MyHomePage()));
          }

          if (val == 4) {
            // Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: MenuPage()));
          }
        },
        currentIndex: 0,
        items: [
          FloatingNavbarItem(
            icon: Icons.store,
            title: 'Store',
          ),
          //FloatingNavbarItem(icon: Icons.help_outline_rounded, title: 'Help Desk'),
          FloatingNavbarItem(
              icon: Icons.monetization_on_outlined, title: 'Orders'),
          FloatingNavbarItem(
              icon: Icons.design_services_outlined, title: 'Designs'),
          FloatingNavbarItem(icon: Icons.people_rounded, title: 'Customers'),
        ],
      ),
    );
  }
}
