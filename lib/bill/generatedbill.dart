import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";


class GeneratedBill extends StatefulWidget {


  @override
  GeneratedBillState createState() => GeneratedBillState();
}

class GeneratedBillState extends State<GeneratedBill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromRGBO(3,43,119,10),
        elevation: 0.0,
        leading: IconButton(
        icon: Icon(Icons.close, color: Colors.white),
        onPressed: () {
          Navigator.pop(context, true);
        },
      ),
    ),
      backgroundColor: Color.fromRGBO(3,43,119,10),
      body: SingleChildScrollView(child:Container(height:MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
        child:Column(
            children:[Container(height: 645,
                width: MediaQuery.of(context).size.width - 10.0,
            child:Card(shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),color: Colors.white,
                child:Container(child:Column(
                  children: [
                    Container(decoration: ShapeDecoration(shape: WeirdBorder(radius: 15, pathWidth:1),color: Colors.black),
                      height: 170,
                      width:MediaQuery.of(context).size.width - 10.0,
                      child:Column(crossAxisAlignment:CrossAxisAlignment.start,
                          children:[
                  SizedBox(height: 18),

                        Row(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[Padding(padding:const EdgeInsets.only(left: 24.11,top:0),

                          child:Column(children:[Text("Mobile",style: TextStyle(fontSize: 9),),

                                Text("+91 99999 999999",style: TextStyle(fontSize: 9),),])),
                                Container(
                                child: Image.asset("assets/images/Butique Profile.png"),
                              ),
                            SizedBox(width: 80,)]),
                            SizedBox(height: 3),

                            Column(crossAxisAlignment:CrossAxisAlignment.center,
                                children:[
                                  Align(alignment:Alignment.center,
                                    child:Text("BOUTIQUE NAME",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600)),),
                                  Align(alignment:Alignment.center,
                                    child:Text("Address: Address of Boutique",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400)),),

                                ]),
                          ]),),

                    Expanded(flex:8,
                        child: Container(decoration: ShapeDecoration(
                        shape: WeirdBorder(radius: 15, pathWidth:1),color: Colors.black),
                      height: 475,
                      width:MediaQuery.of(context).size.width - 10.0,
                      child:Column( crossAxisAlignment:CrossAxisAlignment.start,
                          children:[SizedBox(height: 5,),
                            Align(alignment:Alignment.center,
                            child:Text("RECEIPT",
                                style: TextStyle(
                                    color: Color.fromRGBO(95,93,93,10),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)),),
                            SizedBox(height: 9,),
                            Row( mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(padding:EdgeInsets.only(left:10),child: Text("To",style: TextStyle(
                                  color: Color.fromRGBO(3,43,119,10),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),),
                              Padding(padding:EdgeInsets.only(right:10),child:Text("Date Of Order",style: TextStyle(
                                    color: Color.fromRGBO(151,151,151,10),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500)),),
                              ],),
                               SizedBox(height: 5,),
                            Row( mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(padding:EdgeInsets.only(left:10),child: Text("Customer Name",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),),
                                Padding(padding:EdgeInsets.only(right:10),child:Text("05 June 2021",style: TextStyle(
                                    color: Color.fromRGBO(60,60,61,10),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500)),),
                              ],),
                            SizedBox(height: 5,),
                            Padding(padding:EdgeInsets.only(left:10),child: Text("Mobile No: 99999 99999",style: TextStyle(
                                color: Color.fromRGBO(151,151,151,10),
                                fontSize: 10,
                                fontWeight: FontWeight.w400)),),
                            SizedBox(height: 3,),
                            Padding(padding:EdgeInsets.only(left:10),child: Text("Address:Basaveshwarnangara, Bangalore",style: TextStyle(
                                color: Color.fromRGBO(151,151,151,10),
                                fontSize: 10,
                                fontWeight: FontWeight.w400)),),
                            SizedBox(height: 3,),
                            Padding(padding:EdgeInsets.only(left:10),child: Text("E-mail:customer@email.com",style: TextStyle(
                                color: Color.fromRGBO(151,151,151,10),
                                fontSize: 10,
                                fontWeight: FontWeight.w400)),),
                            Padding(padding:EdgeInsets.only(left: 10,right: 10), child:Divider(
                              color: Colors.black,
                              thickness: 0.5,
                            ),),
                            SizedBox(height:5),
                            Row( mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(padding:EdgeInsets.only(left:10),child: Text("Bill No:",style: TextStyle(
                                    color: Color.fromRGBO(151,151,151,10),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500)),),
                                Padding(padding:EdgeInsets.only(right:10),child:Text("DUE DATE",style: TextStyle(
                                    color: Color.fromRGBO(151,151,151,10),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500)),),
                              ],),
                            SizedBox(height:5),
                            Row( mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(padding:EdgeInsets.only(left:10),child: Text("324",style: TextStyle(
                                    color: Color.fromRGBO(3,43,119,10),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600)),),
                                Padding(padding:EdgeInsets.only(right:10),child:Text("12 June 2021",style: TextStyle(
                                    color: Color.fromRGBO(3,43,119,10),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600)),),
                              ],),
                            SizedBox(height: 5,),
                            Padding(padding:EdgeInsets.only(left: 10,right: 10), child:Divider(
                              color: Colors.black,
                              thickness: 0.5,
                            ),),
                            SizedBox(height:5),
                            Row(mainAxisAlignment:MainAxisAlignment.start,children:[
                              Padding(padding: EdgeInsets.only(left: 10),child:Container(height:65,width:65,decoration: BoxDecoration(borderRadius:BorderRadius.circular(5)),
                                  child:Image.asset('assets/images/Rectangle 523.png')),),
                              Padding(padding: EdgeInsets.only(left: 10),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[Text('Handwork Blouse',style: TextStyle(color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),),
                                  Text('Rs : 900',style: TextStyle(color: Color.fromRGBO(151,151,151,10),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400),),
                                  Padding(padding: EdgeInsets.only(top:5),
                                    child:Text('View Details',style: TextStyle(color: Color.fromRGBO(17,112,222,10),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),),),
                                  Text('Order No:',style: TextStyle(color: Color.fromRGBO(151,151,151,10),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400),),



                                  ]),),
                              SizedBox(width:20),
                              Column(children:[Padding(padding: EdgeInsets.only(left: 21.62),child:Text('Qty:3',
                                style: TextStyle(color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),

                              )),
                                SizedBox(height: 25,),
                              ]),
                              SizedBox(width:49),
                              Column(children:[Padding(padding: EdgeInsets.only(left: 21.62),child:Text('2790.00',
                                style: TextStyle(color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),

                              )),
                                SizedBox(height: 25,),
                              ]),
                              
                            ]),
                            SizedBox(height: 5,),
                            Padding(padding:EdgeInsets.only(left: 10,right: 10), child:Divider(
                              color: Color.fromRGBO(196,196,196,10),
                              thickness: 1,
                            ),),
                            SizedBox(height: 5,),
                            Row(mainAxisAlignment:MainAxisAlignment.start,children:[
                              Padding(padding: EdgeInsets.only(left: 10),child:Container(height:65,width:65,decoration: BoxDecoration(borderRadius:BorderRadius.circular(5)),
                                  child:Image.asset('assets/images/Rectangle 523.png')),),
                              Padding(padding: EdgeInsets.only(left: 10),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[Text('Handwork Blouse',style: TextStyle(color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),),
                                      Text('Rs : 900',style: TextStyle(color: Color.fromRGBO(151,151,151,10),
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400),),
                                      Padding(padding: EdgeInsets.only(top:5),
                                        child:Text('View Details',style: TextStyle(color: Color.fromRGBO(17,112,222,10),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),),),
                                      Text('Order No:',style: TextStyle(color: Color.fromRGBO(151,151,151,10),
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400),),



                                    ]),),
                              SizedBox(width:20),
                              Column(children:[Padding(padding: EdgeInsets.only(left: 21.62),child:Text('Qty:3',
                                style: TextStyle(color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),

                              )),
                                SizedBox(height: 25,),
                              ]),
                              SizedBox(width:49),
                              Column(children:[Padding(padding: EdgeInsets.only(left: 21.62),child:Text('2790.00',
                                style: TextStyle(color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),

                              )),
                                SizedBox(height: 25,),
                              ]),

                            ]),
                            SizedBox(height: 5,),
                            Padding(padding:EdgeInsets.only(left: 10,right: 10), child:Divider(
                              color: Color.fromRGBO(196,196,196,10),
                              thickness: 1,
                            ),),
                            SizedBox(height: 5,),
                            Row(mainAxisAlignment:MainAxisAlignment.start,children:[
                              Padding(padding: EdgeInsets.only(left: 10),child:Container(height:65,width:65,decoration: BoxDecoration(borderRadius:BorderRadius.circular(5)),
                                  child:Image.asset('assets/images/Rectangle 523.png')),),
                              Padding(padding: EdgeInsets.only(left: 10),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[Text('Handwork Blouse',style: TextStyle(color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),),
                                      Text('Rs : 900',style: TextStyle(color: Color.fromRGBO(151,151,151,10),
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400),),
                                      Padding(padding: EdgeInsets.only(top:5),
                                        child:Text('View Details',style: TextStyle(color: Color.fromRGBO(17,112,222,10),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),),),
                                      Text('Order No:',style: TextStyle(color: Color.fromRGBO(151,151,151,10),
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400),),



                                    ]),),
                              SizedBox(width:20),
                              Column(children:[Padding(padding: EdgeInsets.only(left: 21.62),child:Text('Qty:3',
                                style: TextStyle(color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),

                              )),
                                SizedBox(height: 25,),
                              ]),
                              SizedBox(width:49),
                              Column(children:[Padding(padding: EdgeInsets.only(left: 21.62),child:Text('2790.00',
                                style: TextStyle(color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),

                              )),
                                SizedBox(height: 25,),
                              ]),

                            ]),





                          ])

                        ),),
                  ]
                ))),
                ),
                SizedBox(height: 5,),
                Expanded(child:Container(
                    child:Card(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),color: Colors.white,
                      child:Column(children: [
                     Container(height:74,
                  width: MediaQuery.of(context).size.width - 10.0,
                  child: Container(decoration: ShapeDecoration(shape: WeirdBorder(radius: 15, pathWidth:1),color: Colors.black),
                      child:Column(
                      children: [
                        SizedBox(height: 10,),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [Padding(padding: EdgeInsets.only(left:26),child:
                            Text('Total',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Color.fromRGBO(104,104,104,10)),),),
                        SizedBox(width: 147,),
                            Text('₹',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black),),
                            SizedBox(width: 17,),
                            Text('3490.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black),),
                        ],),
                      ])
                  ),),
               Expanded(child:
               Container(height:169,
                    width: MediaQuery.of(context).size.width - 10.0,

                        child: Expanded(child:Container(decoration: ShapeDecoration(shape: WeirdBorder(radius: 15, pathWidth:1),color: Colors.black),
                            child:Column(
                                children: [

                                  Row(mainAxisAlignment: MainAxisAlignment.start,
                                    children: [Padding(padding: EdgeInsets.only(left:26),child:
                                    Text('Total',
                                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Color.fromRGBO(104,104,104,10)),),),
                                      SizedBox(width: 147,),
                                      Text('₹',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black),),
                                      SizedBox(width: 17,),
                                      Text('3490.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black),),
                                    ],),
                                ])
                        )),),
                        )])))),

        Padding(
            padding: const EdgeInsets.all(1.0),
            child:Column(mainAxisAlignment: MainAxisAlignment.end,
                children:[
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.share,color: Colors.black,),

                    onPressed: () {},

                  ),Text("Share or Print",style:TextStyle(color: Colors.white,fontSize: 10,fontFamily: 'Poppins'),)])

        ),SizedBox(height: 5),
            ]),
      ),),
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
  Path getOuterPath(Rect rect, {TextDirection textDirection}) => _createPath(rect);

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  @override
  ShapeBorder scale(double t) => WeirdBorder(radius: radius);

  Path _createPath(Rect rect) {
    final innerRadius = radius + pathWidth;
    final innerRect = Rect.fromLTRB(rect.left + pathWidth, rect.top + pathWidth, rect.right - pathWidth, rect.bottom - pathWidth);

    final outer = Path.combine(PathOperation.difference, Path()..addRect(rect), _createBevels(rect, radius));
    final inner = Path.combine(PathOperation.difference, Path()..addRect(innerRect), _createBevels(rect, innerRadius));
    return Path.combine(PathOperation.difference, outer, inner);
  }

  Path _createBevels(Rect rect, double radius) {
    return Path()
      ..addOval(Rect.fromCircle(center: Offset(rect.left, rect.top), radius: radius))
      ..addOval(Rect.fromCircle(center: Offset(rect.left + rect.width, rect.top), radius: radius))
      ..addOval(Rect.fromCircle(center: Offset(rect.left, rect.top + rect.height), radius: radius))
      ..addOval(Rect.fromCircle(center: Offset(rect.left + rect.width, rect.top + rect.height), radius: radius));
  }

}