import 'package:flutter/material.dart';

// Navigator.push(context, MaterialPageRoute(builder: (context) =>  ,))

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Demo Application',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFF31B1F0), Color(0xFF31B1F0), Color(0xFF31B1F0)],
      )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'images/amazon_blue.png',
                        width: 100,
                        height: 50,
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.search))
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1),
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Text(
                    "Sign in for the best experience",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(30),
                    decoration: BoxDecoration(color: Color(0xFFe6d635)),
                    height: 40,
                    width: double.infinity,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Sgin in ',
                          style: TextStyle(fontSize: 15),
                        ))),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(color: Color(0xFFfbfcd4)),
                    height: 40,
                    width: double.infinity,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Sgin in ',
                          style: TextStyle(fontSize: 15),
                        ))),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'images/BOX_DELIVERY.PNG',
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                            "check order status and track, change or return items"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'images/paper.PNG',
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                            "check order status and track, change or return items"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'images/bag.PNG',
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                            "check order status and track, change or return items"),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
