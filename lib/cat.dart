import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:esraaaa/pro.dart';
import 'package:flutter/material.dart';

import 'modles/product.dart';



class CategoriesScreen extends StatefulWidget {
  CategoriesScreen({super.key, required this.name});

  String name;


  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.name,
            style: TextStyle(color: Colors.orange[900]),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.orange,
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream:FirebaseFirestore.instance.collection(widget.name).snapshots() ,
          builder: (context,snapshot){
            if(snapshot.connectionState==ConnectionState.waiting){
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              );
            }
            else{
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>

                            pro(
                              cate: product(
                                img1: snapshot.data!.docs[index]["img1"],
                                img2: snapshot.data!.docs[index]["img2"],
                                img3: snapshot.data!.docs[index]["img3"],
                                name: snapshot.data!.docs[index]["name"],
                                price1: snapshot.data!.docs[index]["price"] ,
                                oldprice1: snapshot.data!.docs[index]["oldprice"] ,
                                pro_description: snapshot.data!.docs[index]["des"],
                                productcolor1: Colors.black,
                               productcolor2: Colors.blue,
                               productcolor3: Colors.cyanAccent,

                              ),
                            )));

                      },
                      child: ListTile(
                        leading: Container(
                          child: Image(
                            image: NetworkImage(snapshot.data!.docs[index]["img1"]),
                          ),
                        ),
                        title: Text(snapshot.data!.docs[index]["name"]),
                        subtitle: Text("${snapshot.data!.docs[index]["price"].toString()}\$"),

                      ),
                    ),
                    // child: Container(
                    //   child: Row(
                    //     children: [
                    //       SizedBox(
                    //         width: 10.w,
                    //       ),
                    //       Container(
                    //         width: 150.w,
                    //         child: Image(
                    //             image: NetworkImage(snapshot.data!.docs[index]["img1"])),
                    //       ),
                    //       SizedBox(
                    //         width: 20.w,
                    //       ),
                    //       Text(
                    //        snapshot.data!.docs[index]["name"],
                    //         style: TextStyle(
                    //             color: AppColors.quaternaryColor, fontSize: 10.sp),
                    //       ),
                    //       SizedBox(
                    //         width: 20.w,
                    //       ),
                    //       Text(
                    //         "${snapshot.data!.docs[index]["price"].toString()}\$",
                    //         style: TextStyle(
                    //             color: AppColors.quaternaryColor, fontSize: 10.sp),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  );
                },
              );
            }
          },
        )
    );
  }
}