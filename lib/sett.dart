import 'package:esraaaa/addr.dart';
import 'package:esraaaa/dert.dart';
import 'package:esraaaa/navi.dart';
import 'package:esraaaa/pro.dart';
import 'package:flutter/material.dart';

void main() => runApp(sett());

class sett extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHome()
    );
  }
}

class MyHome extends StatelessWidget {

  int _value = 1;
  bool _lights = true;
  bool _lights1 = false;
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
       body:SingleChildScrollView(
         child:  Column(
             children: [
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
               Container( alignment: Alignment.topLeft,
                   padding:EdgeInsets.fromLTRB(20, 20, 0, 0),
                   child:
                   Text("Settings", style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.w900,
                       fontSize: 35))),
               Row(
                   children: [ Column( children:[
                     Padding(  padding: EdgeInsets.fromLTRB(10, 40, 0, 0), child:
                     Text("CURRENCY STATE", style: TextStyle(
                         color: Colors.black,
                         fontWeight: FontWeight.w500,
                         fontSize: 10)),),
                     Container(
                       color: Colors.blueGrey[200],
                       margin: EdgeInsets.fromLTRB(10, 10, 0, 15),
                       padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                       child: DropdownButton<int>(
                         value: _value,
                         items: [
                           DropdownMenuItem<int>(
                             child: Text("egypt"),
                             value: 1,
                           ),
                           DropdownMenuItem<int>(
                             child: Text("ETH/ USD"),
                             value: 2,
                           )
                         ],
                         onChanged: (int? value) {
                         },
                         hint: Text("ETH/ USD"),),)]),
                     Column( children:[
                       Padding(  padding: EdgeInsets.fromLTRB(100, 40, 0, 0), child:
                       Text("SELECT EXCHANGE", style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.w500,
                           fontSize: 10)),),
                       Container(
                         color: Colors.blueGrey[200],
                         margin: EdgeInsets.fromLTRB(80, 10, 0, 15),
                         padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                         child: DropdownButton<int>(
                           value: _value,
                           items: [
                             DropdownMenuItem<int>(
                               child: Text("pound                "),
                               value: 1,
                             ),
                             DropdownMenuItem<int>(
                               child: Text("euro"),
                               value: 2,
                             )
                           ],
                           onChanged: (int? value) {
                           },
                           hint: Text("Select"),),)])
                   ]),
               Container(
                 alignment: Alignment.topLeft,
                 padding:EdgeInsets.fromLTRB(20, 10, 0, 0),
                 child:
                 Text("TRADE DATE", style: TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.w500,
                     fontSize: 10)),),
               Container(
                 color: Colors.blueGrey[200],
                 margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                 width: 350,
                 // margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                 padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                 child: DropdownButton<int>(
                   value: _value,
                   items: [
                     DropdownMenuItem<int>(
                       child: Text(" pound                                                               "),
                       value: 1,
                     ),
                     DropdownMenuItem<int>(
                       child: Text("euro"),
                       value: 2,
                     )
                   ],
                   onChanged: (int? value) {
                   },
                   hint: Text("Select"),),),
               Row(
                   children: [ Column( children:[
                     Padding(  padding: EdgeInsets.fromLTRB(10, 20, 0, 0), child:
                     Text("TRADE PRICE", style: TextStyle(
                         color: Colors.black,
                         fontWeight: FontWeight.w500,
                         fontSize: 10)),),
                     Container(
                       color: Colors.blueGrey[200],
                       margin: EdgeInsets.fromLTRB(10, 10, 0, 15),
                       padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                       child: DropdownButton<int>(
                         value: _value,
                         items: [
                           DropdownMenuItem<int>(
                             child: Text("egypt"),
                             value: 1,
                           ),
                           DropdownMenuItem<int>(
                             child: Text("ETH/ USD"),
                             value: 2,
                           )
                         ],
                         onChanged: (int? value) {
                         },
                         hint: Text("ETH/ USD"),),)]),
                     Column( children:[
                       Padding(  padding: EdgeInsets.fromLTRB(100, 20, 0, 0), child:
                       Text("QUANTITY", style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.w500,
                           fontSize: 10)),),
                       Container(
                         color: Colors.blueGrey[200],
                         margin: EdgeInsets.fromLTRB(80, 10, 0, 15),
                         padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                         child: DropdownButton<int>(
                           value: _value,
                           items: [
                             DropdownMenuItem<int>(
                               child: Text("1                "),
                               value: 1,
                             ),
                             DropdownMenuItem<int>(
                               child: Text("euro"),
                               value: 2,
                             )
                           ],
                           onChanged: (int? value) {
                           },
                           hint: Text("1"),),)])
                   ]),
               Row(
                   children: [ Column( children:[
                     Padding(  padding: EdgeInsets.fromLTRB(10, 20, 0, 0), child:
                     Text("CURRENCY PRICE", style: TextStyle(
                         color: Colors.black,
                         fontWeight: FontWeight.w500,
                         fontSize: 10)),),
                     Container(
                       color: Colors.blueGrey[200],
                       margin: EdgeInsets.fromLTRB(10, 10, 0, 15),
                       padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                       child: DropdownButton<int>(
                         value: _value,
                         items: [
                           DropdownMenuItem<int>(
                             child: Text("435.9"),
                             value: 1,
                           ),
                           DropdownMenuItem<int>(
                             child: Text("ETH/ USD"),
                             value: 2,
                           )
                         ],
                         onChanged: (int? value) {
                         },
                         hint: Text("435.9"),),)]),
                     Column( children:[
                       Padding(  padding: EdgeInsets.fromLTRB(100, 20, 0, 0), child:
                       Text("total price", style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.w500,
                           fontSize: 10)),),
                       Container(
                         color: Colors.blueGrey[200],
                         margin: EdgeInsets.fromLTRB(80, 10, 0, 15),
                         padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                         child: DropdownButton<int>(
                           value: _value,
                           items: [
                             DropdownMenuItem<int>(
                               child: Text("435.9                  "),
                               value: 1,
                             ),
                             DropdownMenuItem<int>(
                               child: Text("euro"),
                               value: 2,
                             )
                           ],
                           onChanged: (int? value) {
                           },
                           hint: Text("435.9"),),)])
                   ]),
               Row(  children:[
                 Padding(  padding: EdgeInsets.fromLTRB(10, 20, 0, 0), child:
                 Text("first setting", style: TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.w500,
                     fontSize: 20)),),
                 Container(
                   padding: EdgeInsets.fromLTRB(180, 20, 0, 0),
                   alignment: Alignment.topRight,
                   child: Switch(
                     value: _lights1,
                     onChanged: (bool value) {
                     },
                     activeColor: Colors.blue, // Custom color when the switch is ON
                     activeTrackColor: Colors.lightBlueAccent, // Custom color for the track when the switch is ON
                     inactiveThumbColor: Colors.grey, // Custom color for the thumb when the switch is OFF
                     inactiveTrackColor: Colors.grey.shade300, // Custom color for the track when the switch is OFF
                   ),)]),
               Row(  children:[
                 Padding(  padding: EdgeInsets.fromLTRB(10, 20, 0, 0), child:
                 Text("second Setting", style: TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.w500,
                     fontSize: 20)),),
                 Container(
                   padding: EdgeInsets.fromLTRB(150, 20, 0, 0),
                   alignment: Alignment.topRight,
                   child: Switch(
                     value: _lights,
                     onChanged: (bool value) {
                     },
                     activeColor: Colors.blue, // Custom color when the switch is ON
                     activeTrackColor: Colors.lightBlueAccent, // Custom color for the track when the switch is ON
                     inactiveThumbColor: Colors.grey, // Custom color for the thumb when the switch is OFF
                     inactiveTrackColor: Colors.grey.shade300, // Custom color for the track when the switch is OFF
                   ),)]),
               Row(
                 children: [
                   Container(
                       height: 50,
                       width: 200,
                       padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                       child: ElevatedButton(
                         child: const Text('BUY coin'),
                         onPressed: () {
                         },
                       )
                   ),
                   Container(
                       height: 50,
                       width: 170,
                       padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                       child: ElevatedButton(
                         child: const Text('SELL coin'),
                         onPressed: () {
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
                 ],
               ),
               Container(
                   height: 50,
                   width: 200,
                   padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                   child: ElevatedButton(
                     child: const Text('Edit profile'),
                     onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>addr()));
                     },
                   )
               ),
             ])

         ,)

          ,)
      ,)
    ;}
}
