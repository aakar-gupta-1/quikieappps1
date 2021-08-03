import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quikieappps1/customer/addcustomer.dart';
import 'package:quikieappps1/customer/createcustomer.dart';
import 'package:quikieappps1/home/homepage.dart';
import 'package:quikieappps1/widgets/custom_bottom_navbar.dart';





class selectcustomer extends StatefulWidget {
  @override
  selectcustomerState createState() => selectcustomerState();
}

class selectcustomerState extends State<selectcustomer> {
  int _currentPage = 0, _index = 0;

  var editingController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:new AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromRGBO(229,229,229,10),

          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20.0,
                color:Color.fromRGBO(3,43,119,10),
              ),
              onPressed: (){Navigator.pop(context,true);
              }
          ),
          title: Text(
            'Select Customers',
            style: TextStyle(color: Color.fromRGBO(3,43,119,10), fontSize: 22.0),
          ),
        ),
        body:Container(color: Color.fromRGBO(229,229,229,10),
          child:
          Stack(

              children:[Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: (value) {

                        },
                        controller: editingController,
                        decoration: InputDecoration(
                            labelText: "Search",

                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5.0)))),
                      ),
                    ),]),

                Positioned(top: 700,left:160,
                  child:
                  Text('Add New Customer',style: TextStyle(fontSize: 14),),),]),),
        bottomNavigationBar: FloatingNavbar(
          borderRadius: 12,
          backgroundColor: Colors.white,
          selectedItemColor: Color.fromRGBO(69, 89, 210, 10),


          unselectedItemColor: Colors.black54,
          onTap: (int val){
            setState(() {
              _index = val;
            });
            if(val == 0)
            { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePageScreen()),
            );

              // Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: DailyLiaScreen()));
            }

            if(val == 1)
            {

              // Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: DailyLiaScreen()));
            }
            if(val == 2)
            {

              // Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: MyHomePage()));
            }


            if(val == 3)
            {


              // Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: MyHomePage()));
            }



          },

          currentIndex: 3,
          items: [
            FloatingNavbarItem(icon: Icons.store, title: 'Store',),
            //FloatingNavbarItem(icon: Icons.help_outline_rounded, title: 'Help Desk'),
            FloatingNavbarItem(icon:Icons.monetization_on_outlined,title:'Orders'),
            FloatingNavbarItem(icon: Icons.design_services_outlined, title: 'Designs'),
            FloatingNavbarItem(icon: Icons.people_rounded, title: 'Customers'),

          ],
        ),


        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: new FloatingActionButton(

          onPressed:(){ Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddCustomer()),
          ); },
          tooltip: 'Increment',
          backgroundColor: Color.fromRGBO(3,43,119,10),
          child:
          Icon(Icons.add),
        )



    );



  }}


