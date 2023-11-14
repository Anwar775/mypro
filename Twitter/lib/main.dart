import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:textformfield_onsave/Login_Page.dart';
import 'package:textformfield_onsave/Sign_up.dart';

import 'Splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50.0, right: 300.0),
            child: Icon(
              FontAwesomeIcons.twitter,
              color: Colors.white,
              size: 30,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 70.0, left: 20.0),
          ),
          // SizedBox(
          //   height: 30.0,
          // ),
          Container(
            child: Text(
              ' Welcome to \n Twitter',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white,
                  letterSpacing: 1.5),
            ),
            padding: EdgeInsets.only(right: 150),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "See what's happening in the world \n right now",
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          SizedBox(height: 50.0,),
          Row(
            children: [
              Container(margin: EdgeInsets.only(right: 20),),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Sign_up();
                  },));
                },
                child: Text("Sign up",style: TextStyle()),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 60.0),
                  ),
                  foregroundColor: MaterialStatePropertyAll(Colors.lightBlue),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(margin: EdgeInsets.only(right: 20),),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                   return LoginPage();
                  },));
                },
                child: Text("Log in"),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.lightBlue),
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 60.0),
                  ),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
