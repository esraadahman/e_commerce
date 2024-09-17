import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:esraaaa/modles/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireStore{

 static final auth=FirebaseAuth.instance;
 static Future<void> Add(String name , String age , String phonenumber) async{
    await FirebaseFirestore.instance.collection('users').add({
          'username':name,
          'age':age,
          'phonenumber':phonenumber
        });
    print("ADDED");
  }
 static Future<void> Add_user_info(String name , String age , String phonenumber) async{
   await FirebaseFirestore.instance.collection('users').doc(auth.currentUser!.uid).set({
     'username':name,
     'age':age,
     'phonenumber':phonenumber
   });
   print("ADDED user");
 }
 static Future<void> AddToWishList(String name, String des, int price,
     int oldprice, String image1, String image2, String image3) async {
   await FirebaseFirestore.instance
       .collection('users')
       .doc(auth.currentUser!.uid)
       .collection('wishlist')
       .add({
     'name': name,
     'des': des,
     'price': price,
     'oldprice': oldprice,
     'image1': image1,
     'image2': image2,
     'image3': image3,
   });
   print("ADDED to wish list");
 }

 static Future<void> AddOrder(String fullname, String location, String address,String phonenumber, int totalprice,String order ) async {
   await FirebaseFirestore.instance
       .collection('users')
       .doc(auth.currentUser!.uid)
       .collection('Orders')
       .add({
     'fullname': fullname,
     'location': location,
     'address': address,
     'phonenumber': phonenumber,
     'totalprice': totalprice,
     'order': order,

   });
 }




}