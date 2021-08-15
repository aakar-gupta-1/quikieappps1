import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quikieappps1/blouse/input_sample.dart';
import 'package:quikieappps1/bottom/bottom_measurement.dart';
import 'package:quikieappps1/dress/input_sample_dress.dart';
import 'package:quikieappps1/saree/saree_design.dart';

class Tabview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var gridView1 = GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 12,
      mainAxisSpacing: 30,
      crossAxisCount: 4,
      children: <Widget>[
        TabBarWidget(
          asset: 'assets/images/Rectangle 540.png',
          text: 'Hand Embroidery',
        ),
        TabBarWidget(
          asset: 'assets/images/Rectangle 542.png',
          text: 'Machine Embroidery',
        ),
        TabBarWidget(
          asset: 'assets/images/Rectangle 544.png',
          text: 'Princes Cut Blouse',
        ),
        TabBarWidget(
          asset: 'assets/images/Rectangle 546.png',
          text: 'Katori Blouse',
        ),
        TabBarWidget(
          asset: 'assets/images/Rectangle 548.png',
          text: 'Lining Blouse',
        ),
        TabBarWidget(
          asset: 'assets/images/Rectangle 550.png',
          text: 'Lehnga Blouse',
        ),
        TabBarWidget(
          asset: 'assets/images/Rectangle 552.png',
          text: 'Blouse',
        ),
      ],
    );
    var gridView2 = GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 2,
      mainAxisSpacing: 20,
      crossAxisCount: 4,
      children: <Widget>[
        TabBarWidget(
          asset: 'assets/images/Rectangle 540.png',
          text: 'Gown',
        ),
        TabBarWidget(
          asset: 'assets/images/Rectangle 542.png',
          text: 'Kurta',
        ),
        TabBarWidget(
          asset: 'assets/images/Rectangle 544.png',
          text: 'Salwar',
        ),
        TabBarWidget(
          asset: 'assets/images/Rectangle 546.png',
          text: 'Ghagra',
        ),
        TabBarWidget(
          asset: 'assets/images/Rectangle 548.png',
          text: 'Churidar',
        ),
        TabBarWidget(
          asset: 'assets/images/Rectangle 550.png',
          text: 'Lehenga Blouse',
        )
      ],
    );
    var gridView3 = GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 2,
      mainAxisSpacing: 20,
      crossAxisCount: 4,
      children: <Widget>[
        TabBarWidget(
          asset: 'assets/images/Rectangle 540.png',
          text: 'Chudi Bottom',
        ),
        TabBarWidget(
          asset: 'assets/images/Rectangle 542.png',
          text: 'Salwar Bottom',
        ),
        TabBarWidget(
          asset: 'assets/images/Rectangle 544.png',
          text: 'Patiala',
        ),
        TabBarWidget(
          asset: 'assets/images/Rectangle 546.png',
          text: 'Palzzo',
        ),
        TabBarWidget(
          asset: 'assets/images/Rectangle 548.png',
          text: 'Straight Pant',
        ),
        TabBarWidget(
          asset: 'assets/images/Rectangle 550.png',
          text: 'Lehenge Bottom',
        ),
      ],
    );
    var gridView4 = GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        crossAxisCount: 4,
        children: <Widget>[
          TabBarWidget(
            asset: 'assets/images/Rectangle 540.png',
            text: 'Saree Krosha',
          ),
          TabBarWidget(
            asset: 'assets/images/Rectangle 542.png',
            text: 'Saree Zig Zag',
          ),
          TabBarWidget(
            asset: 'assets/images/Rectangle 544.png',
            text: 'Saree Falls',
          ),
        ]);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 35,
          elevation: 0.0,
          backgroundColor: Color(0xffF4F8FC),
          title: Container(
            height: 30,
            child: TabBar(
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  // Creates border
                  color: Color.fromRGBO(24, 16, 89, 1)),
              unselectedLabelColor: Color.fromRGBO(151, 151, 151, 1),
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: 'Blouses',
                ),
                Tab(
                  text: 'Tops',
                ),
                Tab(
                  text: 'Bottom',
                ),
                Tab(
                  text: 'Others',
                )
              ],
            ),
          ),
        ),
        body: Container(
          child: TabBarView(
            children: [
              gridView1,
              gridView2,
              gridView3,
              gridView4,
            ],
          ),
        ),
      ),
    );
  }
}

class TabBarWidget extends StatelessWidget {
  final String asset;
  final String text;
  const TabBarWidget({
    this.asset,
    this.text,
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // When the child is tapped, show a snackbar.
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => input_sample()));
      },
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),),
        child: Column(
          children: [
            Container(
              height: 70,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff8BCAFF),
                  ),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: Image.asset(
                    asset,
                    fit: BoxFit.fill,
                    height: 60,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff280D78),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                )),
          ],
        ),
      ),
    );
  }
}
