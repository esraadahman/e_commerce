import 'package:flutter/foundation.dart';

class usermodel{
  String? name;
  String? age;
  String? phonenumber;
  usermodel({this.name,this.age,this.phonenumber});
  factory usermodel.fromJson(Map<String , dynamic> json){
    return usermodel(
      name:json['username'] ,
      age: json['age'],
      phonenumber: json['phonenumber']
    );
  }
}