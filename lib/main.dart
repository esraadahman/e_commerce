import 'package:esraaaa/addr.dart';
import 'package:esraaaa/esraa.dart';
import 'package:esraaaa/prfileSignup.dart';
import 'package:esraaaa/signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHome());
  }
}

class MyHome extends StatelessWidget {
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
                child: Column(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0, 50, 0, 0), //apply padding to all four sides
                child: Image.network(
                  'https://th.bing.com/th/id/OIP.YObf1VLbccpM3PFmJMUfPQHaFA?rs=1&pid=ImgDetMain.jpg',
                  height: 100,
                  width: 100,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0, 60, 0, 60), //apply padding to all four sides
                child: Image.network(
                    'https://as1.ftcdn.net/v2/jpg/02/69/32/86/1000_F_269328641_6PEsAYVSrGUdRhK4uzWkQcIBntPzZftV.jpg',
                    fit: BoxFit.cover),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    10, 10, 0, 5), //apply padding to all four sides
                child: Text(
                  'LEARN ON THE OO',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      // fontWeight: FontWeight.w500,
                      fontSize: 25),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    40, 2, 40, 40), //apply padding to all four sides
                child: Text(
                  'Follow everything new by logging in.'
                  ' No matter where you are, '
                  'we will deliver it to you',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
              ),
              Row(children: [
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                    child: ElevatedButton(
                      child: const Text('SIGN UP'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => esraa()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15.0), // Adjust the radius as needed
                        ),
                      ),
                    )),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                    child: ElevatedButton(
                      child: const Text('SIGN IN'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>signin()));

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15.0), // Adjust the radius as needed
                        ),
                      ),
                    )),
              ]),
            ]))));
  }
}
