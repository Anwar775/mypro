import 'package:flutter/material.dart';
import 'AppColors/Colors.dart';
import 'login_signup.dart';

//final Map<String,WidgetBuilder> routers[
// ]

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 static const colors = MyColor();
  MyApp({Key? key}) : super(key: key);
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      // initialRoute: '/login_signup.dart',
      home: MyHomePage(),
      // routes: routers,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  //  background =  Color(#93FCE5FF);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // flexibleSpace: Container(
        //   // decoration:  BoxDecoration(
        //   //     gradient: LinearGradient(
        //   //         colors: [
        //   //           Color.fromARGB(170, 112, 178, 156),
        //   //           Color.fromARGB(150, 73, 231, 177),
        //   //           Color.fromARGB(255, 131, 017, 226)
        //   //         ]
        //   //     )
        //   // ),
        // ),
        // backgroundColor: Color.fromRGBO(205, 250, 243, 100),
        backgroundColor: Color.fromRGBO(0, 255, 204,100),
        title: Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(
            height: 38,
            decoration: BoxDecoration(
                // color: Colors.white,

                borderRadius: BorderRadius.all(Radius.circular(4))),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    print("search");
                  },
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(labelText: "search Amazon"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Icon(Icons.camera),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Icon(Icons.mic_rounded),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              // color: Color.fromRGBO(205, 250, 243, 100),
              // color: Colors.green[300],
              color: Color.fromRGBO(0, 255, 204,100),
              // margin : EdgeInsets.symmetric(vertical: 20 ),
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('WholeFood'),
                  Text('Fresh'),
                  Text('In-Store Code')
                ],
              ),
            ),
            Container(
                // color: Color.fromRGBO(165, 250, 243,100),
              // color: Colors.green[400],
                color: Color.fromRGBO(0, 255, 204,100),
              // Here
              // color: My,
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.location_on_sharp)),
                        Text(
                          'Search In Yemen',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          "images/back_cart.jpg",
                          width: double.infinity,
                          height: 400,
                          fit: BoxFit.cover,
                        ),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              // scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 140, left: 5),
                                  width: 140,
                                  height: 250,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(0, 3),
                                        ),
                                      ]),
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Oculus",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Image.asset(
                                            "images/var_glasses.jpg",
                                            // color: Colors.white,
                                            width: double.infinity,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 140, left: 20),
                                  width: 140,
                                  height: 250,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(0, 3),
                                        ),
                                      ]),
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "shop phones ",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Image.asset(
                                            "images/phone.jpg",
                                            width: double.infinity,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 140, left: 20),
                                  width: 140,
                                  height: 250,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(0, 3),
                                        ),
                                      ]),
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Women's Fashtion",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Image.asset(
                                            "images/woman_fashion.jpg",
                                            width: double.infinity,
                                            height: 180,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "Sign in for the best experience",
                style: TextStyle(fontWeight: FontWeight.bold),
                // textAlign: TextAlign.right,
              ),
            ),
            Container(
              width: 300,
              height: 50,
              child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {
                    // Navigator
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Lab2_1(),
                      ),
                    );
                  },
                  child: Text(
                    "Sign necessary",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            // GridView.count(
            //   crossAxisCount: 2 ,
            //   children: [
            //     Container(
            //       child: Text("Shop Computers & Accessoies"),color: Colors.red,
            //     ),
            //     //     // Container(
            //     //     //   child: Image.asset(
            //     //     //     "images/laptop.jpg"
            //     //     //   ),
            //     //     // )
            //     //     Container(
            //     //       child: Text("Shop Computers & Accessoies"), color: Colors.green,
            //     //     ),
            //   ],
            // ),
            Container(
              height: 5,
              width: double.infinity,
              color: Color.fromRGBO(205, 250, 243, 100),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 160),
              child: Text(
                'Discount Electronics',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Image.asset('images/phone.jpg'),
                    ),
                    Container(
                      // height: 200,
                      margin: EdgeInsets.only(left: 5),
                      child: Image.asset(
                        'images/laptop.jpg',
                        width: 175,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Container(
                      height: 5,
                      width: double.infinity,
                      color: Color.fromRGBO(205, 250, 243, 100),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 20,
                              right: 30,
                            ),
                            child: Text(
                              'Shop & Computer \nAccessories',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          // SizedBox(width: 5.0,),
                          Container(
                            margin: EdgeInsets.only(
                              top: 20,
                            ),
                            child: Expanded(
                              child: Container(
                                padding: EdgeInsets.all(0.01),
                                child: Image.asset(
                                  // fit: BoxFit.contain,
                                  'images/computer_accessories.jpg',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 5,
                      width: double.infinity,
                      color: Color.fromRGBO(205, 250, 243, 100),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 20, right: 160,left: 10),
                      child: Text(
                        'Top Deal',
                        // Fix Alignment
                        // textAlign: TextAlign.end,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          alignment: Alignment.topLeft,
                          child: Image.asset('images/topdeal.jpg',),),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(child: Text('33\$',style: TextStyle(fontSize: 20.0),),alignment: Alignment.topLeft),
                            SizedBox(width: 20,),
                            Container(child: Text('156\$',style: TextStyle(fontSize: 20.0),),alignment: Alignment.topLeft),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Container(child: Text('Retevis Portable FRS Two-way Radios \n Ends i 16:14:51'),alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 10),),
                        SizedBox(height: 15,),
                        Container(child: Text('see all deals',style: TextStyle(color: Colors.green[700],fontWeight: FontWeight.bold,fontSize: 15.0),),alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 10),),
                        // SizedBox(width: 30,),
                        // SizedBox(height: 10,),

                      //   Here
                        Container(
                          height: 5,
                          width: double.infinity,
                          color: Color.fromRGBO(205, 250, 243, 100),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 20, right: 160,left: 10),
                          child: Text(
                            'Health & Beauty Products',
                            // Fix Alignment
                            // textAlign: TextAlign.end,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              alignment: Alignment.topLeft,
                              child: Image.asset('images/health_and_products.jpg'),
                            ),
                            Container(child: Text('see more',style: TextStyle(color: Colors.green[700],fontWeight: FontWeight.bold)),alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 10),),
                            SizedBox(height: 10,),

                            Container(
                              height: 5,
                              width: double.infinity,
                              color: Color.fromRGBO(205, 250, 243, 100),
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(top: 20, right: 160,left: 10),
                                  child: Text(
                                    'Discount Electronics',
                                    // Fix Alignment
                                    // textAlign: TextAlign.end,
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                        Container(child: Image.asset('images/phone1.jpg'),alignment: Alignment.topLeft,),
                                        // SizedBox(width: 10,),
                                        Container(child: Image.asset('images/phone.jpg'),alignment: Alignment.topRight,),
                                      ],
                                      ),
                                      Container(child: Text('see more',style: TextStyle(color: Colors.green[700],fontWeight: FontWeight.bold)),margin: EdgeInsets.only(right: 300),),
                                      SizedBox(height: 10,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 5,
                              width: double.infinity,
                              color: Color.fromRGBO(205, 250, 243, 100),
                            ),
                          Column(children: [
                            Container(child: Text('Girl\'s everyDay essentials',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 10,top: 15),),
                            SizedBox(height: 10,),
                            Row(children: [
                              Container(child: Image.asset('images/girl.jpg',width: 350,),),
                            ],
                            ),
                            SizedBox(height: 10,),
                            Container(child: Text('see more',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green[700]),),alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 10),),
                            SizedBox(height: 10,), //We can use Container or SizedBox
                            // Container(height: 10,),

                            Container(
                              height: 5,
                              width: double.infinity,
                              color: Color.fromRGBO(205, 250, 243, 100),
                            ),
                            SizedBox(height: 10,),
                            Column(
                              children: [
                            Container(child: Text('Discover Our \n Beauty Selection',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),),
                              SizedBox(height: 20,),
                              Image.asset('images/makeup.jpg',),
                            ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 5,
                              width: double.infinity,
                              color: Color.fromRGBO(205, 250, 243, 100),
                            ),
                            SizedBox(height: 10,),
                            Column(
                              children: [
                                Container(child: Text('Shop Toys & Games',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),),
                                SizedBox(height: 10,),
                                Container(child: Image.asset('images/toys&games.jpg'),),
                              ],
                            ),
                            // SizedBox(height: 10,),
                            Container(
                              height: 5,
                              width: double.infinity,
                              color: Colors.grey
                            ),
                            // SizedBox(height: 10,),
                            Container(
                              height: 50,
                              color: Colors.blueGrey[300],
                              child: Row(children: <Widget>[
                                Expanded(
                                  child: new Container(
                                      margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                                      child: Divider(
                                        color: Colors.black,
                                        height: 50,
                                      )),
                                ),

                                Text("You've reached the end keep exploring"),

                                Expanded(
                                  child: new Container(
                                      margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                                      child: Divider(
                                        color: Colors.black,
                                        height: 50,
                                      )),
                                ),
                              ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(child: Text('Explore Department',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 10),),
                            Column(children: [
                              Row(
                                children: [
                                  Container(child: Image.asset('images/beauty.jpg'),width: 150,margin: EdgeInsets.only(left: 10,top: 10,right: 20),),
                                  // Text('Beauty'),
                                  Container(child: Image.asset('images/kitchen.jpg'),width: 200,margin: EdgeInsets.only(left: 10,top: 10),),
                                  SizedBox(height: 10,),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(children: [
                                // SizedBox(height: 10,),
                                Container(child: Text('Beauty',style: TextStyle(fontSize: 15),),alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 10),),
                                Container(child: Text('Home and Kitchen',style: TextStyle(fontSize: 15),),alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 150),),
                              ],), Row(
                                children: [
                                  Container(child: Image.asset('images/sport.jpg'),width: 150,margin: EdgeInsets.only(left: 10,top: 10,right: 20),),
                                  // Text('Beauty'),
                                  Container(child: Image.asset('images/electronics.jpg'),width: 200,margin: EdgeInsets.only(left: 10,top: 10),),
                                  SizedBox(height: 10,),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(children: [
                                // SizedBox(height: 10,),
                                Container(child: Text('Sports and Outdoors',style: TextStyle(fontSize: 15),),alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 10),),
                                Container(child: Text('Electronics',style: TextStyle(fontSize: 15),),alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 100),),
                              ],
                              ),
                              SizedBox(height: 40,),
                              Container(child: Text('All Departments',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green[700]),),alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 10),),
                              SizedBox(height: 80,),
                              Container(
                                height: 5,
                                width: double.infinity,
                                color: Color.fromRGBO(205, 250, 243, 100),
                              ),
                              SizedBox(height: 70,),
                            ],
                            ),
                          ],
                          ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                // Row(
                //   children: [
                //     Container(child: Image.asset('images/',width: 500,height: 250,),),
                //     Container(),
              ],
            ), //   here
          ],
        ),
      // ------------------------  It was here -------------------------------------------------
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.blueAccent,
        selectedFontSize: 20,
        selectedIconTheme: IconThemeData(color: Colors.blueAccent, size: 30),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        // backgroundColor: Color.fromRGBO(205, 250, 243, 100),
        // backgroundColor: Color.fromRGBO(0, 255, 204,100),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              // color: Colors.red,
              Icons.home,
            ),
            label: 'Home',
            backgroundColor: Color.fromRGBO(0, 255, 204,100),
          ),
          BottomNavigationBarItem(
            label: 'shopping',
            icon: Icon(Icons.add_shopping_cart),
          ),
          BottomNavigationBarItem(label: 'profile', icon: Icon(Icons.person)),
          BottomNavigationBarItem(
            label: 'profile',
            icon: Icon(Icons.menu),
          )
        ],
      ),
    );
  }
}


// Container(
//   // height: 200,
//   margin: EdgeInsets.only(left: 5) ,
//   child: Image.asset(
//     'images/laptop.jpg',
//     width: 175 ,
//     height: 200,
//     fit: BoxFit.cover,
//   ),
// ),
// ],