// ignore_for_file: prefer_const_constructors, file_names, camel_case_types, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'cart.dart';

void main() => runApp(Lab2());

class Lab2 extends StatelessWidget {
  Lab2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Lab2_1(),
    );
  }
}
// class MyColor{
//   static LinearGradient gradientColor = LinearGradient(colors: [
//     Color.fromARGB(100, 112, 178, 156),
//     Color.fromARGB(150 , 73, 231, 177),
//     Color.fromARGB(255, 131, 217, 226),
//   ],);
// }

class Lab2_1 extends StatelessWidget {
  const Lab2_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 255, 204,100),
        title: Text('Sign Up'),
        centerTitle: true,
      ),
      // backgroundColor: Color.fromRGBO(205, 250, 243, 100),title: Text('Sign Up'),centerTitle: true,
      body: SafeArea(
        child: Form(
          child: SingleChildScrollView(
            child: Wrap(
              children: [
                SizedBox(
                  child: Image.asset(
                    'images/amazon.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 150,
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(10),
                  // decoration: BoxDecoration(border: Border.all(width: 1)),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'Create Account',
                        // overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          // letterSpacing: 1
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        autocorrect: true,
                        cursorColor: Colors.green,
                        decoration: InputDecoration(
                          label: Text('Your Name '),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        autocorrect: true,
                        cursorColor: Colors.green,
                        decoration: InputDecoration(
                          label: Text('Email'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        autocorrect: true,
                        cursorColor: Colors.green,
                        decoration: InputDecoration(
                          label: Text('Password'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        autocorrect: true,
                        cursorColor: Colors.green,
                        decoration: InputDecoration(
                          label: Text('Re-Enter Password'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyHomePage(),
                            ),
                          );
                        },
                        child: Text(
                          'Create Your Amazon Account',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.0),
                        ),
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                          ),
                          overlayColor:
                              MaterialStatePropertyAll(Colors.orange[500]),
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.yellow[700]),
                        ),
                      ),
                      // Container(decoration: BoxDecoration(color: Colors.red
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
