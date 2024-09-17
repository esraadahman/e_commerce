import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:esraaaa/addr.dart';
import 'package:esraaaa/dert.dart';
import 'package:esraaaa/navi.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(newadd());}

class newadd extends StatefulWidget {

  _MyHomeState createState() => _MyHomeState();
  }

  class _MyHomeState extends State<newadd> {
  // usermodel? user1;
  static final auth=FirebaseAuth.instance;
  String? username="";
  String? age="";
  String? phone="";
   Future<void> get_user_info() async{
    await FirebaseFirestore.instance.collection('users').doc(auth.currentUser!.uid).get().then((snapshot) {
      if(snapshot.exists){
        setState(() {
          username = snapshot.data()!['username'];
          age = snapshot.data()!['age'];
          phone = snapshot.data()!['phonenumber'];
        });
        //return user1;
      } else { print("no data");}

    });
  }
  void initState(){
     super.initState();
     get_user_info();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          // appBar: AppBar(
          //   // centerTitle: true,
          //   title: const   Text("Weather App"),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(
//                 Icons.add_alert_rounded,
//                 color: Colors.white,
//               ),
//               onPressed: () {
// // do something
//               },
//             )
//           ],
          //   ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row( children:[
                Container(
                  color: Colors.white,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>dert()));
                    },
                  ),),
                  Container(
                    color: Colors.white,
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(240, 60, 0, 0),
                    child: IconButton(
                      icon: Icon(Icons.edit, color: Colors.black),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>addr()));
                      },
                    ),),
                ]),
                Container( alignment: Alignment.topLeft,
                    padding:EdgeInsets.fromLTRB(20, 15, 0, 0),
                    child:
                    Text("profile", style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 35))),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://th.bing.com/th/id/OIP.tdHz9WLVvfjMhvxSVJu5NAHaHa?rs=1&pid=ImgDetMain.jpg"),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),

                ),
                // Replace with your image

                SizedBox(height: 20.0),
                Text(
                  username!,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'esraadahman5@example.com',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20.0),
                Divider(),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding:EdgeInsets.fromLTRB(30, 10, 0, 0),
                      child:
                      Text("Age", style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30)),),
                    Container(
                      alignment: Alignment.topLeft,
                      padding:EdgeInsets.fromLTRB(100, 10, 0, 0),
                      child:
                      Text(age!, style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30)),),
                  ],),
                Divider(),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding:EdgeInsets.fromLTRB(30, 10, 0, 0),
                      child:
                      Text("phone", style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30)),),
                    Container(
                      alignment: Alignment.topLeft,
                      padding:EdgeInsets.fromLTRB(30, 10, 0, 0),
                      child:
                      Text(phone!, style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30)),),
                  ],),
                Container(
                  color: Colors.orangeAccent,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  padding:EdgeInsets.fromLTRB(100, 15, 0, 0),
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            '12 k',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'followers',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 20.0),
                        ],

                      ),
                      Column(
                        children: [
                          Text(
                            '98',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'funds',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 20.0),
                        ],

                      ),
                      Column(
                        children: [
                          Text(
                            '20',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'profit',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 20.0),
                        ],

                      )
                    ],

                  ),


                )
              ],
            ),)

      ), );
  }
}
