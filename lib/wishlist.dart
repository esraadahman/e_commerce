import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:esraaaa/pro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../modles/product.dart';

class wishlist extends StatefulWidget {
  const wishlist({super.key});

  @override
  State<wishlist> createState() => _wishlistState();
}

class _wishlistState extends State<wishlist> {
  final auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Wishlist',style: TextStyle(color:Colors.black),),
          centerTitle: true,
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream:FirebaseFirestore.instance.collection("Users").doc(auth.currentUser!.uid).collection("wishlist").snapshots() ,
          builder: (context, snapshot) {
            if(snapshot.connectionState==ConnectionState.waiting){
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            else{
              return  ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    return
                      GestureDetector(
                        onTap: (){
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=>

                              // pro(
                              //   product: product(
                              //     productImg1: snapshot.data!.docs[index]["img1"],
                              //     productImg2: snapshot.data!.docs[index]["img2"],
                              //     productImg3: snapshot.data!.docs[index]["img3"],
                              //     productname: snapshot.data!.docs[index]["name"],
                              //     productPrice: snapshot.data!.docs[index]["price"] ,
                              //     productOldPrice: snapshot.data!.docs[index]["oldprice"] ,
                              //     productDescription: snapshot.data!.docs[index]["des"],
                              //     productColor1: Colors.black,
                              //     productColor2: Colors.blue,
                              //     productColor3: Colors.cyanAccent,
                              //
                              //   ),
                              // )));
                        },
                        child: ListTile(
                          leading: Image(image: NetworkImage(snapshot.data!.docs[index]['img1'])),
                          title: Text(snapshot.data!.docs[index]['name']),
                          subtitle: Text(snapshot.data!.docs[index]['price'].toString()),
                          trailing: IconButton(icon:Icon(Icons.remove), onPressed: () {}),
                        ),
                      );
                  });
            }
          },
        )
    );
  }
}