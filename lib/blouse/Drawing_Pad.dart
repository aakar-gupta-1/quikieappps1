import 'package:flutter/material.dart';

class Drawing_Pad extends StatefulWidget {
  @override
  Drawing_PadState createState() => Drawing_PadState();
}

class Drawing_PadState extends State<Drawing_Pad> {

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:AppBar(elevation: 0.0,
        backgroundColor:Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color.fromRGBO(3,43,1191,10),
          ),
          onPressed: () {},
        ),),
      backgroundColor: Colors.white,
      body:Container(
        child:Column(
          children:[
            Container(height:MediaQuery.of(context).size.height *0.7 ,
            width:MediaQuery.of(context).size.width  ,
            color: Colors.white,

            ),
            Container(
              height: 75.89,
              width:width ,
              decoration: BoxDecoration(
                color: Color.fromRGBO(3,43,119,10),
                borderRadius: BorderRadius.all(Radius.circular(69))
                ),
              child:Row(
                children: [
                  SizedBox(height: 31,),
                  SizedBox(width:49),
                  IconButton(
                    icon: Icon(
                      Icons.text_fields,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width:47),
                  IconButton(
                    icon: Icon(
                      Icons.replay,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width:110),
                  IconButton(
                    icon: Icon(
                      Icons.replay,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                 SizedBox(width: 44,),
                  IconButton(
                    icon: Icon(
                      Icons.redo_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),



                ],
              ),

            ),
            SizedBox(height: 20,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: Color.fromRGBO(3,43,119,10),
                    child: Text("Cancel"),
                    onPressed: null,

                    shape: new RoundedRectangleBorder(

                      borderRadius: new BorderRadius.circular(28.0),
                    ),
                  ),
                  SizedBox(width: 5),
                  RaisedButton(
                    color: Color.fromRGBO(3,43,119,10),

                    child: Text("Save"),
                    onPressed: null,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(28.0),
                    ),

                  ),
                ],
              ),
            ),


          ],
        ),
      ) ,
    );

  }

}