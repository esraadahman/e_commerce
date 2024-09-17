import 'package:esraaaa/dert.dart';
import 'package:esraaaa/navi.dart';
import 'package:flutter/material.dart';

void main() => runApp(noha());

class noha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHome()
    );
  }
}

class MyHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        Scaffold(
            backgroundColor: Colors.white,
             appBar: AppBar(
               backgroundColor: Colors.white,
               title: Row(  children: [
                 Padding(padding:EdgeInsets.fromLTRB(0, 0, 0, 0),child: IconButton(
                   icon: Icon(Icons.arrow_back, color: Colors.black),
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>dert()));
                   },
                 ),),
       Padding(padding:EdgeInsets.fromLTRB(60, 0, 0, 0),child:
   Text("Shopping Cart (6)", style: TextStyle(
       color: Colors.black,
       fontWeight: FontWeight.w500,
       fontSize: 30))),

    ],)
             ),
            body: ListView(
        children: [
        Container(
        color: Colors.white,
        height: 150,
          child: Row(
            children: [ Padding(padding:EdgeInsets.fromLTRB(15, 10, 0, 10), child:
              Image.network('https://eg.hm.com/assets/styles/HNM/15410077/509cb9255fa25d3568d35013729a4d793ce7d53d/1/image-thumb__4450097__product_zoom_medium_606x504/509cb9255fa25d3568d35013729a4d793ce7d53d.jpg',
                  height: 70 ),),
              Padding(padding:EdgeInsets.fromLTRB(50, 10, 0, 10), //apply padding to all four sides
                child:
                Text(
                  'item description',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      // fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),),
              Padding(padding:EdgeInsets.fromLTRB(40, 10, 0, 5), //apply padding to all four sides
                child:
                Text(
                  "\$53.5",
                  style: TextStyle(
                      color: Colors.yellow[700],
                      fontWeight: FontWeight.w500,
                      // fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),),


            ],
          ),
    ),

          Container(
            color: Colors.white,
            height: 150,
            child: Row(
              children: [ Padding(padding:EdgeInsets.fromLTRB(15, 10, 0, 10), child:
              Image.network('https://images.pexels.com/photos/267391/pexels-photo-267391.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1.jpg',
                  height: 70 ),),
                Padding(padding:EdgeInsets.fromLTRB(40, 10, 0, 10), //apply padding to all four sides
                  child:
                  Text(
                    'item description',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        // fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),),
                Padding(padding:EdgeInsets.fromLTRB(30, 10, 0, 5), //apply padding to all four sides
                  child:
                  Text(
                    "\$53.5",
                    style: TextStyle(
                        color: Colors.yellow[700],
                        fontWeight: FontWeight.w500,
                        // fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),),


              ],
            ),
          ),

          Container(
            color: Colors.white,
            height: 150,
            child: Row(
              children: [ Padding(padding:EdgeInsets.fromLTRB(15, 10, 0, 10), child:
              Image.network('https://images.pexels.com/photos/437037/pexels-photo-437037.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1.jpg',
                  height: 70 ),),
                Padding(padding:EdgeInsets.fromLTRB(40, 10, 0, 10), //apply padding to all four sides
                  child:
                  Text(
                    'item description',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        // fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),),
                Padding(padding:EdgeInsets.fromLTRB(30, 10, 0, 5), //apply padding to all four sides
                  child:
                  Text(
                    "\$53.5",
                    style: TextStyle(
                        color: Colors.yellow[700],
                        fontWeight: FontWeight.w500,
                        // fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),),


              ],
            ),
          ),

          Container(
            color: Colors.white,
            height: 150,
            child: Row(
              children: [ Padding(padding:EdgeInsets.fromLTRB(15, 10, 0, 10), child:
              Image.network('https://th.bing.com/th/id/R.ac3ee4b6ab9e0251770b5fbd40ff2662?rik=W4XH6oGcD8HIbQ&pid=ImgRaw&r=0.jpg',
                  height: 70 ),),
                Padding(padding:EdgeInsets.fromLTRB(50, 10, 0, 10), //apply padding to all four sides
                  child:
                  Text(
                    'item description',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        // fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),),
                Padding(padding:EdgeInsets.fromLTRB(40, 10, 0, 5), //apply padding to all four sides
                  child:
                  Text(
                    "\$53.5",
                    style: TextStyle(
                        color: Colors.yellow[700],
                        fontWeight: FontWeight.w500,
                        // fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),),


              ],
            ),
          ),

          Container(
            color: Colors.white,
            height: 150,
            child: Row(
              children: [ Padding(padding:EdgeInsets.fromLTRB(15, 10, 0, 10), child:
              Image.network('https://th.bing.com/th/id/OIP.Ekb-9LilnQGzGiRWa_SVDgHaLp?rs=1&pid=ImgDetMain.jpg',
                  height: 70 ),),
                Padding(padding:EdgeInsets.fromLTRB(50, 10, 0, 10), //apply padding to all four sides
                  child:
                  Text(
                    'item description',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        // fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),),
                Padding(padding:EdgeInsets.fromLTRB(40, 10, 0, 5), //apply padding to all four sides
                  child:
                  Text(
                    "\$53.5",
                    style: TextStyle(
                        color: Colors.yellow[700],
                        fontWeight: FontWeight.w500,
                        // fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),),


              ],
            ),
          ),

          Container(
            color: Colors.white,
            height: 150,
            child: Row(
              children: [ Padding(padding:EdgeInsets.fromLTRB(15, 10, 0, 10), child:
              Image.network('https://th.bing.com/th/id/R.61469693248fbe8bad2c696335d1e42c?rik=5Os7tNPt4tFulw&pid=ImgRaw&r=0.jpg',
                  height: 70 ),),
                Padding(padding:EdgeInsets.fromLTRB(50, 10, 0, 10), //apply padding to all four sides
                  child:
                  Text(
                    'item description',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        // fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),),
                Padding(padding:EdgeInsets.fromLTRB(40, 10, 0, 5), //apply padding to all four sides
                  child:
                  Text(
                    "\$53.5",
                    style: TextStyle(
                        color: Colors.yellow[700],
                        fontWeight: FontWeight.w500,
                        // fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),),


              ],
            ),
          ),

    ],
            )


        ));
  }
}