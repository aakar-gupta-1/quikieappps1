import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quikieappps1/screens/Welcome2.dart';
import 'package:quikieappps1/screens/welcome1.dart';

import 'home/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(PreLoginScree());
  });
}

class PreLoginScree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PreLoginScreeDesign",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.white,
        fontFamily: "Poppins",
        appBarTheme: AppBarTheme(
          shadowColor: Colors.blue,
          textTheme: TextTheme(
            headline1: TextStyle(
                // fontFamily: "OpenSans",
                ),
          ),
        ),
      ),
      home: PreLoginScreeDesign(),
    );
  }
}

class PreLoginScreeDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        color: Colors.blue,
        child: Column(
          children: [
            Container(
              /*decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage("assets/images/rose.png"),
                  fit: BoxFit.cover,
                ),
              ),*/
              height: height * 0.5,
              child: Center(
                child: Container(
                  height: 300.23,
                  width: 200.0,
                  margin: EdgeInsets.fromLTRB(94, 71, 94, 0),
                  child: Image.asset(
                    'assets/images/Logo.png',
                    fit: BoxFit.fill,

                  ),
                ),
              ),
              //do something,
            ),
            Container(
                height: height * 0.5,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(35.0),
                  ),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(38, 17, 31, 0),
                        child: Container(
                            width: 309,
                            height: 53,
                            child: Text(
                              "Welcome To",
                              style: TextStyle(
                                  fontSize: 35, color: Color(0xFF032B77)),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(38, 0, 124, 0),
                        child: Container(
                            width: 216,
                            height: 69,
                            child: Text(
                              "Tezy",
                              style: TextStyle(
                                  fontSize: 55, color: Color(0xFFFF6B6B)),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(38, 0, 59, 0),
                        child: Container(
                          width: 281,
                          height: 66,
                          child: Text(
                            "T ezy's fully automated fashion order management  delivers more control over your inventory And more revenue.",
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF979797),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(28, 10, 41, 0),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => welcomeScreen2()),
                            );
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          padding: const EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Color(0xFF101010),
                                  Color(0xFF443F3F),
                                ],
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(80.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  constraints: const BoxConstraints(
                                      minWidth: 230.0, minHeight: 55.0),
                                  // min sizes for Material buttons
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'LOGIN',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    width: 38,
                                    height: 38,
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 9, 10, 9),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFe0f2f1),
                                    ),
                                    child: IconButton(
                                      color: Colors.black,
                                      icon: SvgPicture.asset(
                                        'assets/images/arrow_forward_ios_black_24dp.svg',
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  welcomeScreen2()),
                                        );
                                      }, //do something,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                           Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => welcomeScreen1()));
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: width*0.1,vertical: height*0.03),
                          width: 309,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFE5F3FD),
                          ),
                          child: Center(
                            child: Text(
                              "Don’t have an account ? Register !",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ])),
          ],
        ),
        //color: Colors.white,
      ),
    );
  }
}
