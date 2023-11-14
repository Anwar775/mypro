import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Sign_up(),
    );
  }
}

class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => Sign_upState();
}

class Sign_upState extends State<Sign_up> {

  String username = "";
  String password = "";
  String email = "";
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();


  save(){
    var formdata = formstate.currentState;
    // formdata!.save();
    if(formdata!.validate())
    {
      print("Username : $username");
      print("Username : $password");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formstate,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.twitter,color: Colors.lightBlue,size: 30.0),
            SizedBox(
              height: 40.0,
            ),
            // AppBar(
            //   title: Text('Twitter'),
            //   centerTitle: true,
            // ),
            SizedBox(height: 20.0),
            Text('Sign up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.0)),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.0)),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.key_sharp),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  prefixIcon: Icon(Icons.key_sharp),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: save,
              child: Text("Sign Up"),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 100.0)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
