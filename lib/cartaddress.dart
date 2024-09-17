import 'package:esraaaa/dert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fast_forms/flutter_fast_forms.dart';

import 'Blogic_Firebase/fireStore.dart';
import 'modles/cartitem.dart';





class CartAddress extends StatefulWidget {
  CartAddress({super.key, required this.nettotal});
  int nettotal;

  @override
  State<CartAddress> createState() => _CartAddressState();
}

class _CartAddressState extends State<CartAddress> {
  String firstname = "";
  String lastname = "";
  String country = "";
  String city = "";
  String address = "";
  String code = "";
  String phonenumber = "";
  String order = " ";
  int tax = 50;
  int delivery = 150;
  int totalorderr = 0;
  totalorder() {
    totalorderr = widget.nettotal + tax + delivery;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    totalorder();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 30, 0, 20),
            child:
        Row(  children: [
        Padding(padding:EdgeInsets.fromLTRB(0, 0, 0, 0),child: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>dert()));
        },
      ),),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              " Your Address Information",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),]),),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Container(
                width: 150,
                child: FastTextField(
                  onChanged: (Value) {
                    setState(() {
                      firstname = Value!;
                    });
                  },
                  name: 'field_destination',
                  decoration: InputDecoration(
                    labelText: 'first name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 150,
                child: FastTextField(
                  onChanged: (Value) {
                    setState(() {
                      lastname = Value!;
                    });
                  },
                  name: 'field_destination',
                  decoration: InputDecoration(
                    labelText: 'last name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Container(
                width: 150,
                child: FastDropdown<String>(
                  onChanged: (Value) {
                    setState(() {
                      country = Value!;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Country',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  name: 'dropdown',
                  items: ['Egypt', 'Irac', 'Usa', 'England', 'Iceland'],
                  initialValue: 'Egypt',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 150,
                child: FastDropdown<String>(
                  onChanged: (Value) {
                    setState(() {
                      city = Value!;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'City',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  name: 'dropdown',
                  items: ['Cairo', 'Baghdad', 'NewYork', 'London', 'Iceland'],
                  initialValue: 'Cairo',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 5, 20, 0),
            width: 330,
            child: FastTextField(
              onChanged: (Value) {
                setState(() {
                  address = Value!;
                });
              },
              name: 'field_destination',
              decoration: InputDecoration(
                labelText: 'Address details',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Container(
                width: 70,
                child: FastTextField(
                  onChanged: (Value) {
                    setState(() {
                      code = Value!;
                    });
                  },
                  name: 'field_destination',
                  decoration: InputDecoration(
                    labelText: 'Code',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                width: 230,
                child: FastTextField(
                  onChanged: (Value) {
                    setState(() {
                      phonenumber = Value!;
                    });
                  },
                  name: 'field_destination',
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                  width: 310,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange[400]),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "order price :          ${widget.nettotal} ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Tax :                             50 ",
                        style: TextStyle(
                            color:  Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Delivery :                      150 ",
                        style: TextStyle(
                            color:  Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Total :                        $totalorderr ",
                        style: TextStyle(
                            color:  Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:  Colors.orange[900]),
                        onPressed: () {
                          for (var index in cartitems) {
                            order = order + "x${index.count} ${index.name}\n ";
                          }
                          // for(int i = 0; i < 5; i++)

                          FireStore.AddOrder(
                              firstname + " " + lastname,
                              country + " " + city,
                              address,
                              code+phonenumber,
                              totalorderr,
                              order);

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => dert()));
                        },
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}