import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quikieappps1/blouse/input_sample.dart';
import 'package:quikieappps1/bottom/bottom_measurement.dart';
import 'package:quikieappps1/dress/input_sample_dress.dart';
import 'package:quikieappps1/saree/saree_design.dart';

class Tabview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var gridView1 =GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 20,
      crossAxisCount: 4,
      children: <Widget>[
        GestureDetector(
        // When the child is tapped, show a snackbar.
        onTap: () {Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => input_sample()));},
        child:
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [

              Expanded(
                flex: 9,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: Image.asset('assets/images/Rectangle 540.png',
                      fit: BoxFit.fill),
                ),
              ),
              Expanded(flex: 5, child: Text("Hand Embroidery",textAlign: TextAlign.center,)),
            ],
          ),
        ),),
    GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => input_sample()));},
    child:
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,

                child:
                ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset('assets/images/Rectangle 542.png',
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Machine Embroidery",textAlign: TextAlign.center,)),
            ],
          ),
        ),),GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => input_sample()));},
    child:
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset('assets/images/Rectangle 544.png',
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Princes Cut Blouse",textAlign: TextAlign.center,)),
            ],
          ),
        ),),
    GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => input_sample()));},
    child:
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset('assets/images/Rectangle 546.png',
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Katori Blouse",textAlign: TextAlign.center,)),
            ],
          ),
        ),),GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => input_sample()));},
    child:
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset('assets/images/Rectangle 548.png',
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Lining Blouse",textAlign: TextAlign.center,)),
            ],
          ),
        ),),
    GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => input_sample()));},
    child:
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset('assets/images/Rectangle 550.png',
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Lehenga Blouse",textAlign: TextAlign.center,)),
            ],
          ),
        ),),GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => input_sample()));},
    child:
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset("assets/images/Rectangle 552.png",
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Blouse",textAlign: TextAlign.center,)),
            ],
          ),
        ),),
      ],
    );
    var gridView2 =GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 20,
      crossAxisCount: 4,
      children: <Widget>[
        GestureDetector(
        // When the child is tapped, show a snackbar.
        onTap: () {Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => input_sample_dress()));},
    child:
        Container(decoration: BoxDecoration(
            color: Colors.transparent,

            borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset('assets/images/Rectangle 540.png',
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Gown",textAlign: TextAlign.center,)),
            ],
          ),
        ),),
    GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => input_sample_dress()));},
    child:
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset('assets/images/Rectangle 542.png',
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Kurta",textAlign: TextAlign.center,)),
            ],
          ),
        ),),
    GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => input_sample_dress()));},
    child:
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset('assets/images/Rectangle 544.png',
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Salwar",textAlign: TextAlign.center,)),
            ],
          ),
        ),),
    GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => input_sample_dress()));},
    child:
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset('assets/images/Rectangle 546.png',
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Ghagra",textAlign: TextAlign.center,)),
            ],
          ),
        ),),
    GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => input_sample_dress()));},
    child:
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset('assets/images/Rectangle 548.png',
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Churidar",textAlign: TextAlign.center,)),
            ],
          ),
        ),),GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => input_sample_dress()));},
    child:
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset('assets/images/Rectangle 550.png',
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Lehenga Blouse",textAlign: TextAlign.center,)),
            ],
          ),
        ),),

      ],
    );
    var gridView3 =GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 20,
      crossAxisCount: 4,
      children: <Widget>[
        GestureDetector(
        // When the child is tapped, show a snackbar.
        onTap: () {Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()));},
    child:
        Container(decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset('assets/images/Rectangle 540.png',
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Chudi Bottom",textAlign: TextAlign.center,)),
            ],
          ),
        ),),
    GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage()));},
    child:
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset('assets/images/Rectangle 542.png',
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Salwar Bottom",textAlign: TextAlign.center,)),
            ],
          ),
        ),),GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage()));},
    child:
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset('assets/images/Rectangle 544.png',
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Patiala",textAlign: TextAlign.center,)),
            ],
          ),
        ),),
    GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage()));},
    child:
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset('assets/images/Rectangle 546.png',
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Palzzo",textAlign: TextAlign.center,)),
            ],
          ),
        ),),GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage()));},
    child:
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset('assets/images/Rectangle 548.png',
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Straight Pant",textAlign: TextAlign.center,)),
            ],
          ),
        ),),GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage()));},
    child:
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset('assets/images/Rectangle 550.png',
                        fit: BoxFit.fill)),
              ),
              Expanded(flex: 5, child: Text("Lehenga Bottom",textAlign: TextAlign.center,)),
            ],
          ),
        ),),

      ],
    );
    var gridView4 =GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        crossAxisCount: 4,
        children: <Widget>[
        GestureDetector(
        // When the child is tapped, show a snackbar.
        onTap: () {Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => saree_design()));},
    child:
          Container(decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Column(
              children: [
                Expanded(
                  flex: 9,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: Image.asset('assets/images/Rectangle 540.png',
                          fit: BoxFit.fill)),
                ),
                Expanded(flex: 5, child: Text("Saree Krosha",textAlign: TextAlign.center,)),
              ],
            ),
          ),),
    GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => saree_design()));},
    child:
          Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Column(
              children: [
                Expanded(
                  flex: 9,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: Image.asset('assets/images/Rectangle 542.png',
                          fit: BoxFit.fill)),
                ),
                Expanded(flex: 5, child: Text("Saree Zig Zag",textAlign: TextAlign.center,)),
              ],
            ),
          ),), GestureDetector(
    // When the child is tapped, show a snackbar.
    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => saree_design()));},
    child:
          Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Column(
              children: [
                Expanded(
                  flex: 9,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: Image.asset('assets/images/Rectangle 544.png',
                          fit: BoxFit.fill)),
                ),
                Expanded(flex: 5, child: Text("Saree Falls",textAlign: TextAlign.center,)),
              ],
            ),
          ),),

        ]);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromRGBO(244, 248, 252, 1),
          title: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                // Creates border
                color: Color.fromRGBO(24, 16, 89, 1)),
            unselectedLabelColor: Color.fromRGBO(151, 151, 151, 1),
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Blouses',),
              Tab(text: 'Tops',),
              Tab(text: 'Bottom',),
              Tab(text: 'Others',)
            ],
          ),

        ),
        body:
        TabBarView(
          children: [
            gridView1,
            gridView2,
            gridView3,
            gridView4,
          ],
        ),

      ),
    );}}