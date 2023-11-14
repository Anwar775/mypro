import 'package:flutter/material.dart';
import 'package:textformfield_onsave/Sign_up.dart';
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
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String username = "";
  String password = "";
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
            //   foregroundColor: Colors.black,
            //   automaticallyImplyLeading: false,
            //   title: Text('Twitter'),
            //   centerTitle: true,
            // ),
            Text("Login",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
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
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.key_sharp),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: save,
              child: Text("Login"),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 100.0)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0))),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            TextButton(
              child: Text(
                "Forget Password",
                style: TextStyle(
                  color: Colors.blue[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: (){},
            ),
            TextButton(
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.blue[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Sign_up();
                },));
              },
            ),
          ],
        ),
      ),
    );
  }
}
// TextFormFieldOnSave function