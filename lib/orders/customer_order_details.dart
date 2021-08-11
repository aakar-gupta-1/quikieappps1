import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CustomerOrderDetails extends StatefulWidget {
//  final String img;
//   CustomerOrderDetails({Key key, @required this.img}) : super(key: key);
  @override
  _CustomerOrderDetailsState createState() => _CustomerOrderDetailsState();
}

class _CustomerOrderDetailsState extends State<CustomerOrderDetails> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color(0xff032B77),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: height*0.06),
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                        Padding(
                          padding: EdgeInsets.only(right: 60),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/customer1.png',height: height*0.1,),
                              Text(
                                "Customer Name",
                                style:
                                TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Mobile No:- 9999999999",
                                style:
                                TextStyle(fontSize: 12, color: Colors.white,fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height*0.02,),
                   
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffEDF1F5),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(35.0),
                  ),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   Container(
                     margin: EdgeInsets.symmetric(vertical: 10),
                     child: Text('ALL BILLS',style: TextStyle(color: Color(0xff032B77),fontWeight: FontWeight.bold),)),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       height: height*0.13,
                       width: width,
                       child: Card(
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                         color: Colors.white,
                         shadowColor: Colors.grey,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Image.asset('assets/images/Rectangle 546.png'),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Text('BILL NO : 04',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                                 Text('Customer Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color(0xff979797)),),
                                 Text('Orders: 04',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color(0xff1170DE)),),
                               ],
                             ),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.end,
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Text('Due',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 10,color: Color(0xff979797)),),
                                 Text('12 Sep 2021',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,),),
                                 Text('View Order List',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Color(0xff1170DE)),),
                               ],
                             ),
                           ],
                         ),
                       ),
                     ),
                   ),
                  Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       height: height*0.13,
                       width: width,
                       child: Card(
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                         color: Colors.white,
                         shadowColor: Colors.grey,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Image.asset('assets/images/Rectangle 546.png'),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Text('BILL NO : 04',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                                 Text('Customer Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color(0xff979797)),),
                                 Text('Orders: 04',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color(0xff1170DE)),),
                               ],
                             ),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.end,
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Text('Due',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 10,color: Color(0xff979797)),),
                                 Text('12 Sep 2021',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,),),
                                 Text('View Order List',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Color(0xff1170DE)),),
                               ],
                             ),
                           ],
                         ),
                       ),
                     ),
                   )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
