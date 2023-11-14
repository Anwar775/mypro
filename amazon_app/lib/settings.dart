import 'package:flutter/material.dart';


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
      home: MyHomePage() ,
    );
  }
}

class MyHomePage extends StatelessWidget{
  // void dropdownCallback (selectedValue){
  //   if (selectedValue is String){
  //     setState(() {
  //       _dropDownValue = selectedValue;
  //     })
  //   }
  // }
  String _dropDownValue = 'one';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Scaffold(
        backgroundColor: Colors.cyan,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50 ),
              padding: EdgeInsets.symmetric(horizontal: 5),
              height: 50,
              decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow:[ BoxShadow(
                      color: Colors.grey.shade500,
                      offset: Offset(4,4),
                      blurRadius: 15,
                      spreadRadius: 1
                  ),
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(-4,-4),
                        blurRadius: 15,
                        spreadRadius: 1
                    )
                  ]
              ),
              child: Row(
                children:  [
                  IconButton(icon: const Icon(Icons.search), onPressed: () { print("search"); },),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: "search Amazon"),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(7), child: Icon(Icons.camera),),
                  const Padding(padding: EdgeInsets.all(7), child: Icon(Icons.mic_rounded),),
                ],
              ),
            ),
            SizedBox(height: 50,),
            Container(
              margin: EdgeInsets.only(top: 30),
              decoration:  BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow:[ BoxShadow(
                      color: Colors.grey.shade500,
                      offset: Offset(4,4),
                      blurRadius: 15,
                      spreadRadius: 1
                  ),
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(-4,-4),
                        blurRadius: 15,
                        spreadRadius: 1
                    )
                  ]
              ),
              child: DropdownButton(
                value: 'one',
                onChanged: null,
                isExpanded: true,
                padding: EdgeInsets.all(2),
                icon: Icon(Icons.arrow_drop_down),
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
                items: [
                  DropdownMenuItem(child: Text("Shop by Department") , value : 'one'),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration:  BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow:[ BoxShadow(
                      color: Colors.grey.shade500,
                      offset: Offset(4,4),
                      blurRadius: 15,
                      spreadRadius: 1
                  ),
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(-4,-4),
                        blurRadius: 15,
                        spreadRadius: 1
                    )
                  ]
              ),
              child: DropdownButton(
                value: 'one',
                onChanged: null,
                isExpanded: true,
                padding: EdgeInsets.all(2),
                icon: Icon(Icons.arrow_drop_down),
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
                items: [
                  DropdownMenuItem(child: Text("Settings") , value : 'one'),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration:  BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow:[ BoxShadow(
                      color: Colors.grey.shade500,
                      offset: Offset(4,4),
                      blurRadius: 15,
                      spreadRadius: 1
                  ),
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(-4,-4),
                        blurRadius: 15,
                        spreadRadius: 1
                    )
                  ]
              ),
              child: DropdownButton(
                value: 'one',
                onChanged: null,
                isExpanded: true,
                padding: EdgeInsets.all(2),
                icon: Icon(Icons.arrow_drop_down),
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
                items: [
                  DropdownMenuItem(child: Text("Customer Service") , value : 'one'),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration:  BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow:[ BoxShadow(
                      color: Colors.grey.shade500,
                      offset: Offset(4,4),
                      blurRadius: 15,
                      spreadRadius: 1
                  ),
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(-4,-4),
                        blurRadius: 15,
                        spreadRadius: 1
                    )
                  ]
              ),
              child: DropdownButton(
                value: 'one',
                onChanged: null,
                isExpanded: true,
                padding: EdgeInsets.all(2),
                icon: Icon(Icons.arrow_drop_down),
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
                items: [
                  DropdownMenuItem(child: Text("Sign In") , value : 'one'),
                ],
              ),
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                        textStyle: TextStyle(fontSize: 15),
                        padding: EdgeInsets.all(15),
                        backgroundColor: Colors.white
                    ),
                    onPressed: null, child: Text('Orders')
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        textStyle: TextStyle(fontSize: 15),
                        padding: EdgeInsets.all(15),
                        backgroundColor: Colors.white
                    ),
                    onPressed: null, child: Text('Buy Again')
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        textStyle: TextStyle(fontSize: 15),
                        padding: EdgeInsets.all(15),
                        backgroundColor: Colors.white
                    ),
                    onPressed: null, child: Text('Account')
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        textStyle: TextStyle(fontSize: 15),
                        padding: EdgeInsets.all(15),
                        backgroundColor: Colors.white
                    ),
                    onPressed: null, child: Text('Lists')
                ),
              ],
            )

          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.blueAccent,
          selectedFontSize: 20,
          selectedIconTheme: IconThemeData(color: Colors.blueAccent, size:30),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.shifting,
          backgroundColor: Color.fromRGBO(205, 250, 243, 100),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
              ),
              label: 'Home',
              backgroundColor: Color.fromRGBO(205, 250, 243, 100),
            ),
            BottomNavigationBarItem(
                label: 'shopping',
                icon: Icon(Icons.add_shopping_cart)
            ),
            BottomNavigationBarItem(
                label: 'profile',
                icon: Icon(Icons.person)
            ),
            BottomNavigationBarItem(
              label: 'profile',
              icon: Icon(Icons.menu),
            ),
          ],
        ),
      ),
    );
  }
}