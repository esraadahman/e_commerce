import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:esraaaa/dert.dart';
import 'package:esraaaa/esraa.dart';
import 'package:esraaaa/navi.dart';
import 'package:esraaaa/noha.dart';
import 'package:esraaaa/show.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Blogic_Firebase/fireStore.dart';

void main() => runApp(addr());

class addr extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<addr> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController age = TextEditingController();
  void dispose(){
    super.dispose();
    name.dispose();
    age.dispose();
    phone.dispose();
  }
  // usermodel? user1;
  static final auth=FirebaseAuth.instance;
  Future<void> get_user_info() async{
    await FirebaseFirestore.instance.collection('users').doc(auth.currentUser!.uid).get().then((snapshot) {
      if(snapshot.exists){
        setState(() {
          name.text = snapshot.data()!['username'];
          age.text = snapshot.data()!['age'];
          phone.text = snapshot.data()!['phonenumber'];
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
          child:  Column(
              children: [
                Row(  children:[
                  Container(
                    alignment: Alignment.topLeft,
                    height: 30,
                    margin: EdgeInsets.fromLTRB(20, 80, 0, 0),
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow[300], // Set the color of the circle
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>dert()));
                      },
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      padding:EdgeInsets.fromLTRB(20, 80, 0, 0),
                      child:
                      Text("Edit Profile", style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 20))),
                  Container(
                    margin: EdgeInsets.fromLTRB(70, 80, 0, 0),
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow[300],
                    ),
                    child:  Icon(
                      Icons.add_alert,
                      color: Colors.black, // Set the color of the icon
                    ),),




                ]),
                Row(
                  children: [
                    Column(  children:[
                      Container(
                          alignment: Alignment.topLeft,
                          padding:EdgeInsets.fromLTRB(20, 25, 0, 0),
                          child: const Text(
                            'first name',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          )),
                      Container(
                        width: 130,
                        padding:EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: TextField(
                          controller: name,
                          decoration:  InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: name.text,
                          ),
                        ),
                      ),  //name
                    ]),
                    Column(  children:[
                      Container(
                          alignment: Alignment.topLeft,
                          padding:EdgeInsets.fromLTRB(80, 25, 0, 0),
                          child: const Text(
                            'last name',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          )),
                      Container(
                        width: 130,
                        margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
                        padding:EdgeInsets.fromLTRB(30, 10, 0, 0),
                        child: TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'last name',
                          ),
                        ),
                      ),
                    ])
                  ],),
                Container(
                    alignment: Alignment.topLeft,
                    padding:EdgeInsets.fromLTRB(20, 25, 0, 0),
                    child: const Text(
                      'address',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )),
                Container(
                  padding:EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'address',
                    ),
                  ),
                ),
                Row(
                  children: [
                    Column(  children:[
                      Container(
                          alignment: Alignment.topLeft,
                          padding:EdgeInsets.fromLTRB(20, 25, 0, 0),
                          child: const Text(
                            'city',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          )),
                      Container(
                        width: 130,
                        padding:EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'city',
                          ),
                        ),
                      ),
                    ]),
                    Column(  children:[
                      Container(
                          alignment: Alignment.topLeft,
                          padding:EdgeInsets.fromLTRB(80, 25, 0, 0),
                          child: const Text(
                            'Age',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          )),
                      Container(
                        width: 130,
                        margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
                        padding:EdgeInsets.fromLTRB(30, 10, 0, 0),
                        child: TextField(
                          controller: age,
                          decoration:  InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: age.text,
                          ),
                        ),
                      ),  //age
                    ])
                  ],),
                Container(
                    alignment: Alignment.topLeft,
                    padding:EdgeInsets.fromLTRB(20, 25, 0, 0),
                    child: const Text(
                      'country',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )),
                Container(
                  padding:EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'country',
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding:EdgeInsets.fromLTRB(20, 25, 0, 0),
                    child: const Text(
                      'phone',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )),
                Container(
                  padding:EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: TextField(
                    controller: phone,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: phone.text,
                    ),
                  ),
                ), //phone
                Container(
                    height: 50,
                    width: 300,
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Edit Informations',style: TextStyle(
                          color: Colors.black),),
                      onPressed: () {
                        try{
                          FireStore.Add_user_info(name.text.trim(), age.text.trim(), phone.text.trim());
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>navie()));
                        }
                        catch(e){
                          print(e);
                        }
                        //
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                        ),
                      ),
                    )
                ),

              ])

          ,)

        ,)
      ,)
    ;}
}
