import 'package:esraaaa/Blogic_Firebase/Auth.dart';
import 'package:esraaaa/Blogic_Firebase/fireStore.dart';
import 'package:esraaaa/dert.dart';
import 'package:esraaaa/navi.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(profilesignup());
}
// class profilesignup extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home:MyHome()
//     );
//   }
// }
class profilesignup extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<profilesignup> {

  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController age = TextEditingController();
  @override
 void dispose(){
   super.dispose();
   name.dispose();
   age.dispose();
   phone.dispose();
 }

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        Scaffold(
            backgroundColor: Colors.white,
            // appBar: AppBar(
            //   title: Text('Profile Screen'),
            // ),
            body:SingleChildScrollView(
                child: Padding(
                    padding:EdgeInsets.fromLTRB(10, 16, 16, 5),// Outer padding for the entire screen
                    child:   Column(
                      children:[

                        Container(
                          alignment: Alignment.topLeft,
                          padding:EdgeInsets.fromLTRB(0, 400, 0, 0),
                          // width: 50.0, // Set the width of the container
                          height: 50.0, // Set the height of the container
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellow[300], // Set the color of the circle
                          ),
                          child:  Icon(
                            Icons.arrow_back,
                            color: Colors.white, // Set the color of the icon
                          ),),
                        Container(
                            alignment: Alignment.topLeft,
                            padding:EdgeInsets.fromLTRB(15,30, 0, 0),
                            child: const Text(
                              'CREATE',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            )),
                        Container(
                            alignment: Alignment.topLeft,
                            padding:EdgeInsets.fromLTRB(15, 10, 0, 0),
                            child: const Text(
                              'ACCOUNT',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            )),

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
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'first name',
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
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'age',
                                  ),
                                ),
                              ),
                            ])
                          ],),
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
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'phone',
                            ),
                          ),
                        ),


                        Center(
                            child: Row(
                              children: [
                                Checkbox(
                                  value:true,
                                  onChanged: (bool? value) {
                                    isChecked = value ?? false;
                                  },
                                ),
                                Text('Accept the Conditions'),
                              ],)),
                        Container(
                            height: 50,
                            width: 300,
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              child: const Text('Login',style: TextStyle(
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

                      ],
                    )))
        )
    );

  }
}



