import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quikieappps1/bodymeasure/input_sample_numberpicker.dart';
import 'package:quikieappps1/bodymeasure/measurement.dart';
import 'package:quikieappps1/home/homepage.dart';

class input_sample extends StatefulWidget {
  @override
  input_sampleState createState() => input_sampleState();
}

class input_sampleState extends State<input_sample> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xFFE5F3FD),
        appBar: new AppBar(
          elevation: 0.0,
          backgroundColor:Color(0xFFE5F3FD),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20.0,
                color: Color.fromRGBO(3, 43, 119, 10),
              ),
              onPressed: () {
                Navigator.pop(context, true);
              }),
          title: Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Blouse',
                  style: TextStyle(
                      color: Color.fromRGBO(3, 43, 119, 10), fontSize: 22.0),
                ),
                Text(
                  'Select Measurement Below',
                  style: TextStyle(color: Colors.black87, fontSize: 14.0),
                )
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              child: Center(
                child: Container(
                  height: 178.8,
                  width: 77.0,
                  margin: EdgeInsets.fromLTRB(150, 15, 148, 0),
                  child: Image.asset(
                    'assets/images/Lady Taking Measurement.png',
                  ),
                ),
              ),
              //do something,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 40),
              child: Center(
                child: Text('We will Predicts The Body Measurement Later You Can Change Please Fill Your',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w300,height: 1.5),textAlign: TextAlign.center,)),
            ),
            Container(
                child: Text(
              "Shoulder",
              style: TextStyle(fontSize: 24, color: Colors.black87),
            )),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Container(
                child: inputsamplePickerWrapper(
                  initialValue: 95,
                  minValue: 10,
                  maxValue: 200,
                  step: 1,
                  unit: 'INCH',
                  title: '',
                  widgetWidth: MediaQuery.of(context).size.width.round() - 30,
                  subGridCountPerGrid: 10,
                  subGridWidth: 8,
                  onSelectedChanged: (value) {
                    print(value);
                  },
                ),
              ),
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePageScreen()),
                  );
                },
                child: Image.asset("assets/images/Previous.png"),
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Image.asset("assets/images/Next Step.png"),
              )
            ],
          ),
        ));
  }
}
