import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quikieappps1/design/select_front_design.dart';
import 'package:quikieappps1/input_sample.dart';


import 'horizontal_numberpicker_wrapper.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(229,229,229,10),
        centerTitle: true,
        title: Text(
      'Blouse',
      style: TextStyle(
          fontSize: 24.0,
          color: Color.fromRGBO(3,43,119,10),
          fontWeight: FontWeight.normal,
          fontFamily: 'Productsans',

      ),
    ),
        actions: <Widget> [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child:Text(
                  'CM',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromRGBO(3,43,119,10),
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Productsans',

                  ),
                ),
              )
          ),

        ],
    leading: IconButton(
    icon: Icon(
    Icons.arrow_back_ios,
    size: 20.0,
     color: Color.fromRGBO(3,43,119,10),
    ),
    onPressed: (){Navigator.pop(context,true);
    }
    ),),
        body: Container(
            child:  Stack(

                children: [

                  Align(
                    alignment: Alignment.centerRight,
                    child: Opacity(
                            opacity: 0.7,
                            child: Image.asset("assets/images/3d woman 1.png")),),
            Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(229,229,229,10),                            //color:Color.fromRGBO(255, 245, 229, 100),
                ),
                  child:Padding(
                      padding: const EdgeInsets.only( left: 80.0,right:85),


                    child: Text('Select Measurement Below', style: TextStyle(fontSize: 20.0, fontFamily: 'Productsans',color: Color.fromRGBO(3,43,119,10)), textAlign: TextAlign.start,),
                  ),),

             Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(flex:2,
              child:


              Container(

                  child: Padding(padding: const EdgeInsets.only( top:30,left:10),
                  child: SingleChildScrollView(child:Column(children:

                            [Padding(
                              padding: const EdgeInsets.only( right: 1.0),
                              child: Text('Full Length', style: TextStyle(fontSize: 20.0, fontFamily: 'Productsans', fontWeight: FontWeight.bold,color: Color.fromRGBO(3,43,119,10)), textAlign: TextAlign.center,),
                            ),
                              SizedBox(height: 6.0,width:12,),


                              Container(
                            decoration: BoxDecoration(
                            color: Color.fromRGBO(3,43,119,1),
                      border: Border.all(
                          color: Colors.white, // Set border color
                          width: 1.0),   // Set border width
                      borderRadius: BorderRadius.all(
                          Radius.circular(10.0)), // Set rounded corner radius
                      boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                  ),child:

                             HorizontalNumberPickerWrapper(
                        initialValue: 95,
                        minValue: 10,
                        maxValue: 200,
                        step: 1,
                        unit: 'CM',
                        title: 'Full Length',
                        widgetWidth: MediaQuery.of(context).size.width.round() - 30,
                        subGridCountPerGrid: 10,
                        subGridWidth: 8,
                        onSelectedChanged: (value) {
                          print(value);
                        },
                      ),),
                              Divider(height:20),

                              Padding(
                                padding: const EdgeInsets.only( right: 1.0),
                                child: Text('Shoulder', style: TextStyle(fontSize: 20.0, fontFamily: 'Productsans', fontWeight: FontWeight.bold,color: Color.fromRGBO(3,43,119,10)), textAlign: TextAlign.center,),
                              ),
                              SizedBox(height: 6.0,width:12,),

                              Container(decoration: BoxDecoration(
                                color: Color.fromRGBO(3,43,119,1),
                                border: Border.all(
                                    color: Colors.white, // Set border color
                                    width: 1.0),   // Set border width
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10.0)), // Set rounded corner radius
                                boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                            ),
                              child: HorizontalNumberPickerWrapper(
                                initialValue: 95,
                                minValue: 10,
                                maxValue: 200,
                                step: 1,
                                unit: 'CM',
                                title: 'Full Length',
                                widgetWidth: MediaQuery.of(context).size.width.round() - 30,
                                subGridCountPerGrid: 10,
                                subGridWidth: 8,
                                onSelectedChanged: (value) {
                                  print(value);
                                },
                              ),),
                              Divider(height:20),

                              Padding(
                                padding: const EdgeInsets.only( right: 1.0),
                                child: Text('Chest Round', style: TextStyle(fontSize: 20.0, fontFamily: 'Productsans', fontWeight: FontWeight.bold,color: Color.fromRGBO(3,43,119,10)), textAlign: TextAlign.center,),
                              ),
                              SizedBox(height: 6.0,width:12,),

                              Container(decoration: BoxDecoration(
                                  color: Color.fromRGBO(3,43,119,1),
                                  border: Border.all(
                                      color: Colors.white, // Set border color
                                      width: 1.0),   // Set border width
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0)), // Set rounded corner radius
                                  boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                              ),
                                child: HorizontalNumberPickerWrapper(
                                  initialValue: 95,
                                  minValue: 10,
                                  maxValue: 200,
                                  step: 1,
                                  unit: 'CM',
                                  title: 'Full Length',
                                  widgetWidth: MediaQuery.of(context).size.width.round() - 30,
                                  subGridCountPerGrid: 10,
                                  subGridWidth: 8,
                                  onSelectedChanged: (value) {
                                    print(value);
                                  },
                                ),),
                              Divider(height:20),
                              Padding(
                                padding: const EdgeInsets.only( right: 1.0),
                                child: Text('Waist Round', style: TextStyle(fontSize: 20.0, fontFamily: 'Productsans', fontWeight: FontWeight.bold,color: Color.fromRGBO(3,43,119,10)), textAlign: TextAlign.center,),
                              ),
                              SizedBox(height: 6.0,width:12,),
                              Container(decoration: BoxDecoration(
                                  color: Color.fromRGBO(3,43,119,1),
                                  border: Border.all(
                                      color: Colors.white, // Set border color
                                      width: 1.0),   // Set border width
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0)), // Set rounded corner radius
                                  boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                              ),
                                child: HorizontalNumberPickerWrapper(
                                  initialValue: 95,
                                  minValue: 10,
                                  maxValue: 200,
                                  step: 1,
                                  unit: 'CM',
                                  title: 'Full Length',
                                  widgetWidth: MediaQuery.of(context).size.width.round() - 30,
                                  subGridCountPerGrid: 10,
                                  subGridWidth: 8,
                                  onSelectedChanged: (value) {
                                    print(value);
                                  },
                                ),),
                              Divider(height:20),
                              Padding(
                                padding: const EdgeInsets.only( right: 1.0),
                                child: Text('Waist Band Length', style: TextStyle(fontSize: 20.0, fontFamily: 'Productsans', fontWeight: FontWeight.bold,color: Color.fromRGBO(3,43,119,10)), textAlign: TextAlign.center,),
                              ),
                              SizedBox(height: 6.0,width:12,),
                              Container(decoration: BoxDecoration(
                                  color: Color.fromRGBO(3,43,119,1),
                                  border: Border.all(
                                      color: Colors.white, // Set border color
                                      width: 1.0),   // Set border width
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0)), // Set rounded corner radius
                                  boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                              ),
                                child: HorizontalNumberPickerWrapper(
                                  initialValue: 95,
                                  minValue: 10,
                                  maxValue: 200,
                                  step: 1,
                                  unit: 'CM',
                                  title: 'Full Length',
                                  widgetWidth: MediaQuery.of(context).size.width.round() - 30,
                                  subGridCountPerGrid: 10,
                                  subGridWidth: 8,
                                  onSelectedChanged: (value) {
                                    print(value);
                                  },
                                ),),
                              Divider(height:20),
                              Padding(
                                padding: const EdgeInsets.only( right: 1.0),
                                child: Text('Sleeves Length', style: TextStyle(fontSize: 20.0, fontFamily: 'Productsans', fontWeight: FontWeight.bold,color: Color.fromRGBO(3,43,119,10)), textAlign: TextAlign.center,),
                              ),
                              SizedBox(height: 6.0,width:12,),
                              Container(decoration: BoxDecoration(
                                  color: Color.fromRGBO(3,43,119,1),
                                  border: Border.all(
                                      color: Colors.white, // Set border color
                                      width: 1.0),   // Set border width
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0)), // Set rounded corner radius
                                  boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                              ),
                                child: HorizontalNumberPickerWrapper(
                                  initialValue: 95,
                                  minValue: 10,
                                  maxValue: 200,
                                  step: 1,
                                  unit: 'CM',
                                  title: 'Full Length',
                                  widgetWidth: MediaQuery.of(context).size.width.round() - 30,
                                  subGridCountPerGrid: 10,
                                  subGridWidth: 8,
                                  onSelectedChanged: (value) {
                                    print(value);
                                  },
                                ),),
                              Divider(height:20),
                              Padding(
                                padding: const EdgeInsets.only( right: 1.0),
                                child: Text('Sleeves Round', style: TextStyle(fontSize: 20.0, fontFamily: 'Productsans', fontWeight: FontWeight.bold,color: Color.fromRGBO(3,43,119,10)), textAlign: TextAlign.center,),
                              ),
                              SizedBox(height: 6.0,width:12,),
                              Container(decoration: BoxDecoration(
                                  color: Color.fromRGBO(3,43,119,1),
                                  border: Border.all(
                                      color: Colors.white, // Set border color
                                      width: 1.0),   // Set border width
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0)), // Set rounded corner radius
                                  boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                              ),
                                child: HorizontalNumberPickerWrapper(
                                  initialValue: 95,
                                  minValue: 10,
                                  maxValue: 200,
                                  step: 1,
                                  unit: 'CM',
                                  title: 'Full Length',
                                  widgetWidth: MediaQuery.of(context).size.width.round() - 30,
                                  subGridCountPerGrid: 10,
                                  subGridWidth: 8,
                                  onSelectedChanged: (value) {
                                    print(value);
                                  },
                                ),),
                              Divider(height:20),
                              Padding(
                                padding: const EdgeInsets.only( right: 1.0),
                                child: Text('Arm Hole Round', style: TextStyle(fontSize: 20.0, fontFamily: 'Productsans', fontWeight: FontWeight.bold,color: Color.fromRGBO(3,43,119,10)), textAlign: TextAlign.center,),
                              ),
                              SizedBox(height: 6.0,width:12,),
                              Container(decoration: BoxDecoration(
                                  color: Color.fromRGBO(3,43,119,1),
                                  border: Border.all(
                                      color: Colors.white, // Set border color
                                      width: 1.0),   // Set border width
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0)), // Set rounded corner radius
                                  boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                              ),
                                child: HorizontalNumberPickerWrapper(
                                  initialValue: 95,
                                  minValue: 10,
                                  maxValue: 200,
                                  step: 1,
                                  unit: 'CM',
                                  title: 'Full Length',
                                  widgetWidth: MediaQuery.of(context).size.width.round() - 30,
                                  subGridCountPerGrid: 10,
                                  subGridWidth: 8,
                                  onSelectedChanged: (value) {
                                    print(value);
                                  },
                                ),),
                              Divider(height:20),
                              Padding(
                                padding: const EdgeInsets.only( right: 1.0),
                                child: Text('Front Neck Deep', style: TextStyle(fontSize: 20.0, fontFamily: 'Productsans', fontWeight: FontWeight.bold,color: Color.fromRGBO(3,43,119,10)), textAlign: TextAlign.center,),
                              ),
                              SizedBox(height: 6.0,width:12,),
                              Container(decoration: BoxDecoration(
                                  color: Color.fromRGBO(3,43,119,1),
                                  border: Border.all(
                                      color: Colors.white, // Set border color
                                      width: 1.0),   // Set border width
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0)), // Set rounded corner radius
                                  boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                              ),
                                child: HorizontalNumberPickerWrapper(
                                  initialValue: 95,
                                  minValue: 10,
                                  maxValue: 200,
                                  step: 1,
                                  unit: 'CM',
                                  title: 'Full Length',
                                  widgetWidth: MediaQuery.of(context).size.width.round() - 30,
                                  subGridCountPerGrid: 10,
                                  subGridWidth: 8,
                                  onSelectedChanged: (value) {
                                    print(value);
                                  },
                                ),),
                              Divider(height:20),
                              Padding(
                                padding: const EdgeInsets.only( right: 1.0),
                                child: Text('Back Neck Deep', style: TextStyle(fontSize: 20.0, fontFamily: 'Productsans', fontWeight: FontWeight.bold,color: Color.fromRGBO(3,43,119,10)), textAlign: TextAlign.center,),
                              ),
                              SizedBox(height: 6.0,width:12,),
                              Container(decoration: BoxDecoration(
                                  color: Color.fromRGBO(3,43,119,1),
                                  border: Border.all(
                                      color: Colors.white, // Set border color
                                      width: 1.0),   // Set border width
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0)), // Set rounded corner radius
                                  boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                              ),
                                child: HorizontalNumberPickerWrapper(
                                  initialValue: 95,
                                  minValue: 10,
                                  maxValue: 200,
                                  step: 1,
                                  unit: 'CM',
                                  title: 'Full Length',
                                  widgetWidth: MediaQuery.of(context).size.width.round() - 30,
                                  subGridCountPerGrid: 10,
                                  subGridWidth: 8,
                                  onSelectedChanged: (value) {
                                    print(value);
                                  },
                                ),),
                              Divider(height:20),
                              Padding(
                                padding: const EdgeInsets.only( right: 1.0),
                                child: Text('Neck Width', style: TextStyle(fontSize: 20.0, fontFamily: 'Productsans', fontWeight: FontWeight.bold,color: Color.fromRGBO(3,43,119,10)), textAlign: TextAlign.center,),
                              ),
                              SizedBox(height: 6.0,width:12,),
                              Container(decoration: BoxDecoration(
                                  color: Color.fromRGBO(3,43,119,1),
                                  border: Border.all(
                                      color: Colors.white, // Set border color
                                      width: 1.0),   // Set border width
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0)), // Set rounded corner radius
                                  boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                              ),
                                child: HorizontalNumberPickerWrapper(
                                  initialValue: 95,
                                  minValue: 10,
                                  maxValue: 200,
                                  step: 1,
                                  unit: 'CM',
                                  title: 'Full Length',
                                  widgetWidth: MediaQuery.of(context).size.width.round() - 30,
                                  subGridCountPerGrid: 10,
                                  subGridWidth: 8,
                                  onSelectedChanged: (value) {
                                    print(value);
                                  },
                                ),),
                              Divider(height:20),
                              Padding(
                                padding: const EdgeInsets.only( right: 1.0),
                                child: Text('Burst Point', style: TextStyle(fontSize: 20.0, fontFamily: 'Productsans', fontWeight: FontWeight.bold,color: Color.fromRGBO(3,43,119,10)), textAlign: TextAlign.center,),
                              ),
                              SizedBox(height: 6.0,width:12,),
                              Container(decoration: BoxDecoration(
                                  color: Color.fromRGBO(3,43,119,1),
                                  border: Border.all(
                                      color: Colors.white, // Set border color
                                      width: 1.0),   // Set border width
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0)), // Set rounded corner radius
                                  boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                              ),
                                child: HorizontalNumberPickerWrapper(
                                  initialValue: 95,
                                  minValue: 10,
                                  maxValue: 200,
                                  step: 1,
                                  unit: 'CM',
                                  title: 'Full Length',
                                  widgetWidth: MediaQuery.of(context).size.width.round() - 30,
                                  subGridCountPerGrid: 10,
                                  subGridWidth: 8,
                                  onSelectedChanged: (value) {
                                    print(value);
                                  },
                                ),),
                              Divider(height:20),

                          ])),
                  ),


                 ),)])])),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => input_sample()),);},
                child: Image.asset("assets/images/Previous.png"),
              ),
              FloatingActionButton(
                onPressed: () { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => select_front_design()),);},
                child:Image.asset("assets/images/Next.png"),
              )
            ],
          ),
        )


    );






    }}