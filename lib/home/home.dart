import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quikieappps1/customer/selectcustomer.dart';
import 'package:quikieappps1/home/popularmenu.dart';
import 'package:quikieappps1/home/todaycustomers.dart';
import 'package:quikieappps1/widgets/custom_bottom_navbar.dart';
import 'package:quikieappps1/design/design.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _index=0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor:Color(0xffF4F8FC),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Boutique Name',
              style: TextStyle(
                  color: Color.fromRGBO(3, 43, 119, 10), fontSize: 22.0,fontFamily: 'Poppins'),
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
              child: Image.asset('assets/images/Ellipse 51.png'),
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
                                  child: Container(
                                    child: Card(
                                        color: Color.fromRGBO(132, 175, 255, 0.9),
                                        elevation: 2.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(11.0),
                                        ),
                                        child: Stack(
                                          children: [
                                            Center(
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Today',
                                                            style: TextStyle(
                                                              fontSize: 21.0,
                                                              fontFamily: 'Productsans',
                                                              fontWeight: FontWeight.bold,
                                                              color: Color.fromRGBO(
                                                                  3, 49, 119, 10),
                                                            ),
                                                            textAlign: TextAlign.center,
                                                          ),
                                                          Text(
                                                            'Orders',
                                                            style: TextStyle(
                                                              fontSize: 10.0,
                                                              fontFamily: 'Productsans',
                                                              fontWeight: FontWeight.bold,
                                                              color: Color.fromRGBO(
                                                                  3, 49, 119, 10),
                                                            ),
                                                          ),
                                                        ]),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding: EdgeInsets.only(left: 20.0),
                                                      child: Text(
                                                        '    Orders to Deliver',
                                                        style: TextStyle(
                                                          fontSize: 15.0,
                                                          fontFamily: 'Productsans',
                                                          fontWeight: FontWeight.bold,
                                                          color: Color.fromRGBO(
                                                              3, 49, 119, 10),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 20.0),
                                                    child: Text(
                                                      '    Pending Orders',
                                                      style: TextStyle(
                                                        fontSize: 15.0,
                                                        fontFamily: 'Productsans',
                                                        fontWeight: FontWeight.bold,
                                                        color:
                                                        Color.fromRGBO(3, 49, 119, 10),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                      flex: 7,
                                                      child: Align(
                                                          alignment: Alignment(1, 1.5),
                                                          child: Image.asset(
                                                              "assets/images/Background Design.png")))
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
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
              MaterialPageRoute(builder: (context) => selectcustomer()),
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
