import 'package:esraaaa/dert.dart';
import 'package:esraaaa/modles/product.dart';
import 'package:esraaaa/navi.dart';
import 'package:esraaaa/pro.dart';
import 'package:flutter/material.dart';

void main() => runApp(show());

class show extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHome()
    );
  }
}

class MyHome extends StatelessWidget {
product p=product(img1: "https://as1.ftcdn.net/v2/jpg/02/98/83/02/1000_F_298830220_lHqS0oOJMOZ8F8ld7z7ZeAdZDv1Gt02U.jpg",img2: "https://media.istockphoto.com/id/642817000/photo/woman-hiker.jpg?s=1024x1024&w=is&k=20&c=eFWi8SbbIjCzXNxECQSh67wqquBSNswbwdA9pyvo_R8=",
   img3: "qqq", pro_description: "pro1",price1: 120,oldprice1:321,productcolor1: Colors.black,productcolor2:Colors.pink,productcolor3:Colors.blue);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        Scaffold(
        backgroundColor: Colors.white,
        // appBar:AppBar(
        //     backgroundColor: Colors.white,
        //     title:
        // ),
          body: SingleChildScrollView(
        child:  Column(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Row(  children: [
                  Padding(padding:EdgeInsets.fromLTRB(0, 0, 0, 0),child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>dert()));
                    },
                  ),),
                  Padding(padding:EdgeInsets.fromLTRB(10, 0, 0, 0),child:
                  Text("Chair", style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 30))),
                  Padding(padding:EdgeInsets.fromLTRB(180, 0, 0, 0),child: IconButton(
                    icon: Icon(Icons.search, color: Colors.black),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>dert()));
                    },
                  ),),
                ],),
              ),

              Container(
    height: 900,
    child:
              GridView.count(
                primary: false,
                // padding: const EdgeInsets.all(4),
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
                crossAxisCount: 2,
                children: [
                  Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://as2.ftcdn.net/v2/jpg/00/29/79/51/1000_F_29795157_gLLeeTiFDsqno207woilLAq0jeOyOqdu.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child:  Padding(padding:EdgeInsets.fromLTRB(100, 0, 0, 0),child: IconButton(
                              icon: Icon(Icons.favorite, color: Colors.black),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>pro(cate: p)));
                              },
                            ),),
                          ),
                          Padding(padding:EdgeInsets.fromLTRB(5, 2, 0, 0),child:
                          Text("item name", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20))),
                          Row(
                            children: [
                              Padding(
                                padding:EdgeInsets.fromLTRB(5, 0, 0, 0),child: IconButton(
                                icon: Icon(Icons.star_half_sharp, color: Colors.black),
                                onPressed: () {
                                  // Handle settings icon tap
                                },
                              ),),
                              Padding(padding:EdgeInsets.fromLTRB(2, 0, 0, 0),child:
                              Text("4.9 | ", style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                  color: Colors.grey, child:
                              Padding(padding:EdgeInsets.fromLTRB(2, 0, 0, 0),child:
                              Text("Rate", style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10)))
                              )
                            ],
                          ),
                          Padding(padding:EdgeInsets.fromLTRB(0, 0, 0, 0), //apply padding to all four sides
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
                      )
                  ),
                  Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://as1.ftcdn.net/v2/jpg/02/98/83/02/1000_F_298830220_lHqS0oOJMOZ8F8ld7z7ZeAdZDv1Gt02U.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child:  Padding(padding:EdgeInsets.fromLTRB(100, 0, 0, 0),child: IconButton(
                              icon: Icon(Icons.favorite, color: Colors.black),
                              onPressed: () {
                              },
                            ),),
                          ),
                          Padding(padding:EdgeInsets.fromLTRB(5, 2, 0, 0),child:
                          Text("item name", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20))),
                          Row(
                            children: [
                              Padding(
                                padding:EdgeInsets.fromLTRB(5, 0, 0, 0),child: IconButton(
                                icon: Icon(Icons.star_half_sharp, color: Colors.black),
                                onPressed: () {
                                  // Handle settings icon tap
                                },
                              ),),
                              Padding(padding:EdgeInsets.fromLTRB(2, 0, 0, 0),child:
                              Text("4.9 | ", style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                  color: Colors.grey, child:
                              Padding(padding:EdgeInsets.fromLTRB(2, 0, 0, 0),child:
                              Text("Rate", style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10)))
                              )
                            ],
                          ),
                          Padding(padding:EdgeInsets.fromLTRB(0, 0, 0, 0), //apply padding to all four sides
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
                      )
                  ),
                  Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://as2.ftcdn.net/v2/jpg/00/57/82/51/1000_F_57825105_RNK3Yt39KOPmQwF348RXI5p74WWOrDr9.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child:  Padding(padding:EdgeInsets.fromLTRB(100, 0, 0, 0),child: IconButton(
                              icon: Icon(Icons.favorite, color: Colors.black),
                              onPressed: () {
                                // Handle settings icon tap
                              },
                            ),),
                          ),
                          Padding(padding:EdgeInsets.fromLTRB(5, 2, 0, 0),child:
                          Text("item name", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20))),
                          Row(
                            children: [
                              Padding(
                                padding:EdgeInsets.fromLTRB(5, 0, 0, 0),child: IconButton(
                                icon: Icon(Icons.star_half_sharp, color: Colors.black),
                                onPressed: () {
                                  // Handle settings icon tap
                                },
                              ),),
                              Padding(padding:EdgeInsets.fromLTRB(2, 0, 0, 0),child:
                              Text("4.9 | ", style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                  color: Colors.grey, child:
                              Padding(padding:EdgeInsets.fromLTRB(2, 0, 0, 0),child:
                              Text("Rate", style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10)))
                              )
                            ],
                          ),
                          Padding(padding:EdgeInsets.fromLTRB(0, 0, 0, 0), //apply padding to all four sides
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
                      )
                  ),
                  Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://as2.ftcdn.net/v2/jpg/00/94/29/91/1000_F_94299126_iffS9ANjtSgD5e7vhTIhUYCOCyJzApIj.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child:  Padding(padding:EdgeInsets.fromLTRB(100, 0, 0, 0),child: IconButton(
                              icon: Icon(Icons.favorite, color: Colors.black),
                              onPressed: () {
                                // Handle settings icon tap
                              },
                            ),),
                          ),
                          Padding(padding:EdgeInsets.fromLTRB(5, 2, 0, 0),child:
                          Text("item name", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20))),
                          Row(
                            children: [
                              Padding(
                                padding:EdgeInsets.fromLTRB(5, 0, 0, 0),child: IconButton(
                                icon: Icon(Icons.star_half_sharp, color: Colors.black),
                                onPressed: () {
                                  // Handle settings icon tap
                                },
                              ),),
                              Padding(padding:EdgeInsets.fromLTRB(2, 0, 0, 0),child:
                              Text("4.9 | ", style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                  color: Colors.grey, child:
                              Padding(padding:EdgeInsets.fromLTRB(2, 0, 0, 0),child:
                              Text("Rate", style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10)))
                              )
                            ],
                          ),
                          Padding(padding:EdgeInsets.fromLTRB(0, 0, 0, 0), //apply padding to all four sides
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
                      )
                  ),
                  Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://as2.ftcdn.net/v2/jpg/03/14/57/47/1000_F_314574703_1W56PjmOaRsdggsFL8H1U10o4hoJX8LP.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child:  Padding(padding:EdgeInsets.fromLTRB(100, 0, 0, 0),child: IconButton(
                              icon: Icon(Icons.favorite, color: Colors.black),
                              onPressed: () {
                                // Handle settings icon tap
                              },
                            ),),
                          ),
                          Padding(padding:EdgeInsets.fromLTRB(5, 2, 0, 0),child:
                          Text("item name", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20))),
                          Row(
                            children: [
                              Padding(
                                padding:EdgeInsets.fromLTRB(5, 0, 0, 0),child: IconButton(
                                icon: Icon(Icons.star_half_sharp, color: Colors.black),
                                onPressed: () {
                                  // Handle settings icon tap
                                },
                              ),),
                              Padding(padding:EdgeInsets.fromLTRB(2, 0, 0, 0),child:
                              Text("4.9 | ", style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                  color: Colors.grey, child:
                              Padding(padding:EdgeInsets.fromLTRB(2, 0, 0, 0),child:
                              Text("Rate", style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10)))
                              )
                            ],
                          ),
                          Padding(padding:EdgeInsets.fromLTRB(0, 0, 0, 0), //apply padding to all four sides
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
                      )
                  ),
                  Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://as1.ftcdn.net/v2/jpg/03/14/57/48/1000_F_314574885_hPfQ1Tp3axxbkvwByheLcbhi3Xb4UHy1.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child:  Padding(padding:EdgeInsets.fromLTRB(100, 0, 0, 0),child: IconButton(
                              icon: Icon(Icons.favorite, color: Colors.black),
                              onPressed: () {
                                // Handle settings icon tap
                              },
                            ),),
                          ),
                          Padding(padding:EdgeInsets.fromLTRB(5, 2, 0, 0),child:
                          Text("item name", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20))),
                          Row(
                            children: [
                              Padding(
                                padding:EdgeInsets.fromLTRB(5, 0, 0, 0),child: IconButton(
                                icon: Icon(Icons.star_half_sharp, color: Colors.black),
                                onPressed: () {
                                  // Handle settings icon tap
                                },
                              ),),
                              Padding(padding:EdgeInsets.fromLTRB(2, 0, 0, 0),child:
                              Text("4.9 | ", style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                  color: Colors.grey, child:
                              Padding(padding:EdgeInsets.fromLTRB(2, 0, 0, 0),child:
                              Text("Rate", style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10)))
                              )
                            ],
                          ),
                          Padding(padding:EdgeInsets.fromLTRB(0, 0, 0, 0), //apply padding to all four sides
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
                      )
                  ),
                  Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://as1.ftcdn.net/v2/jpg/03/14/57/92/1000_F_314579210_7Pzxxh7HCwXPz2XPRLawqVuj241h5II2.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child:  Padding(padding:EdgeInsets.fromLTRB(100, 0, 0, 0),child: IconButton(
                              icon: Icon(Icons.favorite, color: Colors.black),
                              onPressed: () {
                                // Handle settings icon tap
                              },
                            ),),
                          ),
                          Padding(padding:EdgeInsets.fromLTRB(5, 2, 0, 0),child:
                          Text("item name", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20))),
                          Row(
                            children: [
                              Padding(
                                padding:EdgeInsets.fromLTRB(5, 0, 0, 0),child: IconButton(
                                icon: Icon(Icons.star_half_sharp, color: Colors.black),
                                onPressed: () {
                                  // Handle settings icon tap
                                },
                              ),),
                              Padding(padding:EdgeInsets.fromLTRB(2, 0, 0, 0),child:
                              Text("4.9 | ", style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                  color: Colors.grey, child:
                              Padding(padding:EdgeInsets.fromLTRB(2, 0, 0, 0),child:
                              Text("Rate", style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10)))
                              )
                            ],
                          ),
                          Padding(padding:EdgeInsets.fromLTRB(0, 0, 0, 0), //apply padding to all four sides
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
                      )
                  ),
                  Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://as2.ftcdn.net/v2/jpg/03/86/45/77/1000_F_386457792_ydENkbVdHf0jYZlj07XLdvxaPOtCuuyi.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child:  Padding(padding:EdgeInsets.fromLTRB(100, 0, 0, 0),child: IconButton(
                              icon: Icon(Icons.favorite, color: Colors.black),
                              onPressed: () {
                                // Handle settings icon tap
                              },
                            ),),
                          ),
                          Padding(padding:EdgeInsets.fromLTRB(5, 2, 0, 0),child:
                          Text("item name", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20))),
                          Row(
                            children: [
                              Padding(
                                padding:EdgeInsets.fromLTRB(5, 0, 0, 0),child: IconButton(
                                icon: Icon(Icons.star_half_sharp, color: Colors.black),
                                onPressed: () {
                                  // Handle settings icon tap
                                },
                              ),),
                              Padding(padding:EdgeInsets.fromLTRB(2, 0, 0, 0),child:
                              Text("4.9 | ", style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20))),
                              Container(
                                  margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                  color: Colors.grey, child:
                              Padding(padding:EdgeInsets.fromLTRB(2, 0, 0, 0),child:
                              Text("Rate", style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10)))
                              )
                            ],
                          ),
                          Padding(padding:EdgeInsets.fromLTRB(0, 0, 0, 0), //apply padding to all four sides
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
                      )
                  ),

           ],
          ))
      ]))
    ));}}