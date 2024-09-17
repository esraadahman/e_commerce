import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:esraaaa/esraa.dart';
import 'package:esraaaa/main.dart';
import 'package:esraaaa/modles/product.dart';
import 'package:esraaaa/pro.dart';
import 'package:esraaaa/profile.dart';
import 'package:esraaaa/noha.dart';
import 'package:esraaaa/sett.dart';
import 'package:esraaaa/show.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:esraaaa/modles/catogry.dart';
import 'package:esraaaa/catogrey_wigete.dart';

import 'cartview.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(dert());
}

class dert extends StatefulWidget{

  State<dert> createState() =>  _MyHomeState();
}


class _MyHomeState extends State<dert> {
  List<Catogry> list = [
    Catogry(
        name: "laps",
        image1:
            "https://m.media-amazon.com/images/I/61Sqh2visQL.__AC_SX300_SY300_QL70_ML2_.jpg"),
    Catogry(
        name: "smart w",
        image1:
            "https://m.media-amazon.com/images/I/61OUtEN4V7L._AC_SL1500_.jpg"),
    Catogry(
        name: "tv",
        image1:
            "https://m.media-amazon.com/images/I/61C06xysC3L.__AC_SX300_SY300_QL70_ML2_.jpg"),
    Catogry(
        name: "laps",
        image1:
        "https://m.media-amazon.com/images/I/712merlicEL._AC_SX569_.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                  child: Image.network(
                    'https://th.bing.com/th/id/OIP.YObf1VLbccpM3PFmJMUfPQHaFA?rs=1&pid=ImgDetMain.jpg',
                    height: 100,
                    width: 100,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                  child: IconButton(
                    icon: Icon(Icons.shopping_cart_sharp, color: Colors.black),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CartView()));
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: IconButton(
                    icon: Icon(Icons.search, color: Colors.black),
                    onPressed: () {
                      // Handle settings icon tap
                    },
                  ),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
              child: Column(children: [
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://t3.ftcdn.net/jpg/02/94/33/30/240_F_294333093_nL5BCbcquiDb9e8QxJex5J26TM6EDXmr.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          10, 10, 0, 5), //apply padding to all four sides
                      child: Text(
                        'popular',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            // fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          10, 15, 0, 0), //apply padding to all four sides
                      child: Text(
                        'the future of',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            // fontWeight: FontWeight.w500,
                            fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          10, 5, 0, 0), //apply padding to all four sides
                      child: Text(
                        'virtual reality',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            // fontWeight: FontWeight.w500,
                            fontSize: 30),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.all(30),
                      child: Row(
                        children: [
                          Image.network(
                            'https://t4.ftcdn.net/jpg/02/70/04/87/240_F_270048773_GG3Aj4KQy4VrC7ZyAqw2xn4Egoh1UCJa.jpg',
                            // fit: BoxFit.contain
                            height: 50,
                          ),
                          Column(children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(40, 0, 0,
                                  0), //apply padding to all four sides
                              child: Text(
                                'the future of',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    // fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(40, 5, 0,
                                  0), //apply padding to all four sides
                              child: Text(
                                'virtual reality',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    // fontWeight: FontWeight.w500,
                                    fontSize: 10),
                              ),
                            ),
                          ]),
                          Container(
                            margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                            color: Colors.yellow[200],
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                              child: IconButton(
                                icon:
                                    Icon(Icons.arrow_back, color: Colors.black),
                                onPressed: () {
                                  // Handle settings icon tap
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
            Container(
              height: 200,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                  ),
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(5),
                      child: CategoryWidget(cate: list[index]),
                    );
                  }),
            ),
                Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.fromLTRB(7, 0, 0, 10),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                child: Text(
                  'Amazon Deals',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      // fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),
              ),
            ),
            Container(
                height: 160.0, // Set the height as needed
                child: ListView(scrollDirection: Axis.horizontal, children: [
                    GestureDetector(
                    onTap: () {
                      product p=product(img1: "https://m.media-amazon.com/images/I/61Sqh2visQL.__AC_SX300_SY300_QL70_ML2_.jpg"
                          ,img2: "https://m.media-amazon.com/images/I/51V1g5I8oUL.__AC_SX300_SY300_QL70_ML2_.jpg",
                          img3: "https://m.media-amazon.com/images/I/71KvmNxg-XL.__AC_SX300_SY300_QL70_ML2_.jpg",
                          pro_description: "pro1",price1: 65,
                          oldprice1:54,
                          productcolor1:Colors.black,productcolor2: Colors.red,productcolor3: Colors.blue);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => pro(cate: p)));
            print('Box1 Clicked');
            },
                child:
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // shadow color
                          spreadRadius: 2, // shadow spread radius
                          blurRadius: 5, // shadow blur radius
                          offset: Offset(0, 3), // shadow offset
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.network(
                            'https://m.media-amazon.com/images/I/61Sqh2visQL.__AC_SX300_SY300_QL70_ML2_.jpg',
                            height: 70),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              10, 5, 0, 0), //apply padding to all four sides
                          child: Text(
                            'item description',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                // fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              10, 5, 0, 0), //apply padding to all four sides
                          child: Text(
                            "\$53.5",
                            style: TextStyle(
                                color: Colors.yellow[700],
                                fontWeight: FontWeight.w500,
                                // fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),),
                     GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => noha()));
                print('Box1 Clicked');
              },
              child:
              Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // shadow color
                          spreadRadius: 2, // shadow spread radius
                          blurRadius: 5, // shadow blur radius
                          offset: Offset(0, 3), // shadow offset
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.network(
                            'https://m.media-amazon.com/images/I/51HIlAuIXgL.__AC_SX300_SY300_QL70_ML2_.jpg',
                            height: 70),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              10, 5, 0, 0), //apply padding to all four sides
                          child: Text(
                            'item description',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                // fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              10, 5, 0, 0), //apply padding to all four sides
                          child: Text(
                            "\$53.5",
                            style: TextStyle(
                                color: Colors.yellow[700],
                                fontWeight: FontWeight.w500,
                                // fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),

                      ],
                    ),
                  ),),
                     GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => noha()));
                print('Box1 Clicked');
              },
              child:     Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // shadow color
                          spreadRadius: 2, // shadow spread radius
                          blurRadius: 5, // shadow blur radius
                          offset: Offset(0, 3), // shadow offset
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.network(
                            'https://m.media-amazon.com/images/I/61mkbdLT+6S._AC_SX300_SY300_.jpg',
                            height: 70),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              10, 5, 0, 0), //apply padding to all four sides
                          child: Text(
                            'item description',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                // fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              10, 5, 0, 0), //apply padding to all four sides
                          child: Text(
                            "\$53.5",
                            style: TextStyle(
                                color: Colors.yellow[700],
                                fontWeight: FontWeight.w500,
                                // fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),),
                     GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => noha()));
    print('Box1 Clicked');
    },
        child:    Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // shadow color
                          spreadRadius: 2, // shadow spread radius
                          blurRadius: 5, // shadow blur radius
                          offset: Offset(0, 3), // shadow offset
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.network(
                            'https://m.media-amazon.com/images/I/41RNtfKse8L._AC_.jpg',
                            height: 70),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              10, 5, 0, 0), //apply padding to all four sides
                          child: Text(
                            'item description',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                // fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              10, 5, 0, 0), //apply padding to all four sides
                          child: Text(
                            "\$53.5",
                            style: TextStyle(
                                color: Colors.yellow[700],
                                fontWeight: FontWeight.w500,
                                // fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),

                      ],
                    ),
                  ),),
                     GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => noha()));
                print('Box1 Clicked');
              },
              child:         Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // shadow color
                          spreadRadius: 2, // shadow spread radius
                          blurRadius: 5, // shadow blur radius
                          offset: Offset(0, 3), // shadow offset
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.network(
                            'https://img.ltwebstatic.com/images3_spmp/2023/10/17/b4/16975043593ed20c9b9806f609307a765f8d315a41_thumbnail_900x.webp.jpg',
                            height: 70),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              10, 5, 0, 0), //apply padding to all four sides
                          child: Text(
                            'item description',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                // fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              10, 5, 0, 0), //apply padding to all four sides
                          child: Text(
                            "\$53.5",
                            style: TextStyle(
                                color: Colors.yellow[700],
                                fontWeight: FontWeight.w500,
                                // fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),

                      ],
                    ),
                  )),
                ])),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.fromLTRB(8, 0, 0, 10),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                child: Text(
                  'popular Books',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      // fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),
              ),
            ),


                SizedBox(
                    height: 200,
                    child: StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection("mostorderd")
                          .snapshots(),
                      builder: ((context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: pro(
                                  cate: product(
                                    img1: snapshot.data!.docs[index]["image1"],
                                    img2: snapshot.data!.docs[index]["image2"],
                                    img3: snapshot.data!.docs[index]["image3"],
                                    name: snapshot.data!.docs[index]["name"],
                                   price1: snapshot.data!.docs[index]["price"],
                                   oldprice1: snapshot.data!.docs[index]
                                    ["oldprice"],
                                    pro_description: snapshot.data!.docs[index]
                                    ["des"],
                                    productcolor1: Colors.black,
                                    productcolor2: Colors.blue,
                                    productcolor3: Colors.cyanAccent,
                                  ),
                                ));
                          },
                        );
                      }),
                    )),

                // Container(
                //     height: 200,
                //     width: 300,
                //     child: StreamBuilder<QuerySnapshot>(
                //       stream: FirebaseFirestore.instance
                //           .collection("mostsale")
                //           .snapshots(),
                //       builder: ((context, snapshot) {
                //         if (snapshot.connectionState == ConnectionState.waiting) {
                //           return Center(
                //             child: CircularProgressIndicator(),
                //           );
                //         }
                //         return ListView.builder(
                //           scrollDirection: Axis.horizontal,
                //           itemCount: snapshot.data!.docs.length,
                //           itemBuilder: (context, index) {
                //             return Padding(
                //                 padding: const EdgeInsets.all(8.0),
                //                 child: pro(
                //                   cate: product(
                //                     img1: snapshot.data!.docs[index]["image1"],
                //                     img2: snapshot.data!.docs[index]["image2"],
                //                     img3: snapshot.data!.docs[index]["image3"],
                //                     name: snapshot.data!.docs[index]["name"],
                //                     price1: snapshot.data!.docs[index]["price"],
                //                     oldprice1: snapshot.data!.docs[index]
                //                     ["oldprice"],
                //                    pro_description: snapshot.data!.docs[index]
                //                     ["des"],
                //                     productcolor1: Colors.black,
                //                     productcolor2: Colors.blue,
                //                     productcolor3: Colors.cyanAccent,
                //                   ),
                //                 ));
                //           },
                //         );
                //       }),
                //     )),

                Container(
                height: 150.0, // Set the height as needed
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.2), // shadow color
                            spreadRadius: 2, // shadow spread radius
                            blurRadius: 5, // shadow blur radius
                            offset: Offset(0, 3), // shadow offset
                          ),
                        ],
                      ),
                      child: Column(children: [
                        Image.network(
                            'https://th.bing.com/th/id/R.ac3ee4b6ab9e0251770b5fbd40ff2662?rik=W4XH6oGcD8HIbQ&pid=ImgRaw&r=0.jpg',
                            height: 70),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              10, 10, 0, 5), //apply padding to all four sides
                          child: Text(
                            'item description',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                // fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                      ])),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.2), // shadow color
                            spreadRadius: 2, // shadow spread radius
                            blurRadius: 5, // shadow blur radius
                            offset: Offset(0, 3), // shadow offset
                          ),
                        ],
                      ),
                      child: Column(children: [
                        Image.network(
                            'https://th.bing.com/th/id/OIP.Ekb-9LilnQGzGiRWa_SVDgHaLp?rs=1&pid=ImgDetMain.jpg',
                            height: 70),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              10, 10, 0, 5), //apply padding to all four sides
                          child: Text(
                            'item description',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                // fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                      ])),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.2), // shadow color
                            spreadRadius: 2, // shadow spread radius
                            blurRadius: 5, // shadow blur radius
                            offset: Offset(0, 3), // shadow offset
                          ),
                        ],
                      ),
                      child: Column(children: [
                        Image.network(
                            'https://th.bing.com/th/id/OIP.3Kop7zwHJQ_Lc1bPdu_t_QHaLZ?rs=1&pid=ImgDetMain.jpg',
                            height: 70),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              10, 10, 0, 5), //apply padding to all four sides
                          child: Text(
                            'item description',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                // fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                      ])),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.2), // shadow color
                            spreadRadius: 2, // shadow spread radius
                            blurRadius: 5, // shadow blur radius
                            offset: Offset(0, 3), // shadow offset
                          ),
                        ],
                      ),
                      child: Column(children: [
                        Image.network(
                            'https://th.bing.com/th/id/R.61469693248fbe8bad2c696335d1e42c?rik=5Os7tNPt4tFulw&pid=ImgRaw&r=0.jpg',
                            height: 70),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              10, 10, 0, 5), //apply padding to all four sides
                          child: Text(
                            'item description',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                // fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                      ]))
                ])),
          ])),
          drawer: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("Esraa Dahman"),
                  accountEmail: Text("esraadahman5@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      "E",
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => dert()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sett()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.contacts),
                  title: Text("Contact Us"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.search),
                  title: Text("search for new"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => show()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person_rounded),
                  title: Text("profile"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => newadd()));
                  },
                ),
              ],
            ),
          )),
    );
  }
}
