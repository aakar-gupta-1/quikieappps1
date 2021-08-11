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
        child:Column(crossAxisAlignment: CrossAxisAlignment.center,
            children:[Container(height: 645,
                width: MediaQuery.of(context).size.width - 10.0,
            child:Card(shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),color: Colors.white,
                child:Container(child:Column(
                  children: [
                  SizedBox(height: 5),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[Text("Mobile"),

                    Container(
                    child: Image.asset("assets/images/Butique Profile.png"),
                  ),





                ])],)
                )





            ),),



                Expanded(flex: 5,
                    child: Container(height: 243,
                  width: MediaQuery.of(context).size.width - 10.0,
                  child:Card(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),color: Colors.white,
                  ))),

        ]),
      ),
      /*floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(1.0),
        child:Column(children:[
        FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(Icons.share,color: Colors.black,),

            onPressed: () {

      },

      ),Text("Share or Print",style:TextStyle(color: Colors.white,fontSize: 10,fontFamily: 'Poppins'),)])*/




      ) );


  }
}