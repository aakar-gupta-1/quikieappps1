import 'package:flutter/material.dart';
import 'package:quikieappps1/blouse/design/after_selection.dart';

import 'package:quikieappps1/blouse/design/design.dart';
import 'package:quikieappps1/blouse/measurement.dart';
import 'package:quikieappps1/customer/selectcustomer.dart';
import 'package:quikieappps1/home/homepage.dart';
import 'package:quikieappps1/orders/orders.dart';

class BottomNavigation extends StatefulWidget {

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
   final PageController _pageController = PageController();
  var statusLoading = false;
  var loading = false;
  bool _progressVisible = false;
  var _selectedTab = 0;
  void _handleIndexChanged(int i) {
    _pageController.animateToPage(i,
        duration: Duration(microseconds: 200), curve: Curves.elasticInOut);
    setState(() {
      _selectedTab = i;
    });
  }
 @override
  Widget build(BuildContext context) {
    var height =  MediaQuery.of(context).size.height;
    List<Widget> _pages = [
      HomePageScreen(),
      Orders(),
      Design(),
      selectcustomer(),
    ];
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: _pages,
      ),
      bottomNavigationBar: SizedBox(
        height: height*0.08,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            // boxShadow: [
            //   BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            // ],
          ),
          child: BottomNavigationBar(
            selectedLabelStyle: TextStyle(fontSize: 0),
        unselectedLabelStyle: TextStyle(fontSize: 0),
            showSelectedLabels: false,   // <-- HERE
          showUnselectedLabels: false, 
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/Home.png',)),label: ''),
              BottomNavigationBarItem(
                   icon: ImageIcon(AssetImage('assets/images/Order (1).png',)),label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/Design.png',)), label: ''),
              BottomNavigationBarItem(
                 icon: ImageIcon(AssetImage('assets/images/Customer.png',),size: 50,), label: ''),
            ],
            currentIndex: _selectedTab,
            iconSize: 35,
            onTap: (i) => _handleIndexChanged(i),
          ),
        ),
      ),
    );
  }}