import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage() ,
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF31B1F0) , Color(0xFFfffaf0)]
              )
          ),
        ),
        // backgroundColor: Color.fromRGBO(205, 250, 243, 100),
        title: const Padding(
          padding:  EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(onPressed: null , icon: Icon(Icons.add_alert_sharp)),
              Text('Deliver to Yemen')
            ],
          ),
        ),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20 , top: 10),
            // child: Image(image: AssetImage('images/back.png')),
            child: Image.asset(
              'images/cart.png',
              height: 150,
            ),
          ),
          Text('Your Amazon Cart is empty',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 5,),
          Text('Nothing in here. Only possibilties'
          ),
          SizedBox(height: 20, ),
          Text("shop today's deals",
            style: TextStyle(color: Colors.teal),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 30 ,vertical: 20),
              decoration:  BoxDecoration(
                  color:  Color(0xFFe6d635),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.black)
              ),
              height: 50,
              width: double.infinity,
              child : const Align(
                  alignment: Alignment.center,
                  child: Text('Sign in your account' , style: TextStyle(fontSize: 15),))
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 100 ,vertical: 20),
              decoration:  BoxDecoration(
                  color:  Color(0xFFf7f4d7),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.black)

              ),
              height: 40,
              width: double.infinity,
              child : const Align(
                  alignment: Alignment.center,
                  child: Text('Sign up now ' , style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),)
          ),
          SizedBox(height: 20,),
          Divider(
            height: 5,
            thickness: 0.2,
            color: Colors.black,
          ),
          SizedBox(height: 20,),
          Divider(
            height: 5,
            thickness: 0.2,
            color: Colors.black,
          ),
          SizedBox(height: 20,),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 30 ,vertical: 20),
              decoration:  BoxDecoration(
                  color:  Color(0xFFe6d635),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.black)
              ),
              height: 60,
              width: double.infinity,
              child : const Align(
                  alignment: Alignment.center,
                  child: Text('Continue shopping', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),)
          ),
        ],
      ),
    );
  }
}