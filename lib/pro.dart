import 'package:esraaaa/dert.dart';
import 'package:esraaaa/modles/product.dart';
import 'package:esraaaa/navi.dart';
import 'package:esraaaa/noha.dart';
import 'package:esraaaa/profile.dart';
import 'package:esraaaa/show.dart';
import 'package:flutter/material.dart';
import 'package:esraaaa/modles/product.dart';

import 'Blogic_Firebase/fireStore.dart';
import 'modles/cartitem.dart';
class pro extends StatefulWidget{
  pro({super.key,
    required this.cate});
  product cate;
  State<pro> createState() =>  _MyHomeState();
}


class _MyHomeState extends State<pro> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Product Details'),
      // ),
      floatingActionButton: Container(
        margin: EdgeInsets.fromLTRB(30, 0, 10, 0),
        width: MediaQuery.sizeOf(context).width,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.orange,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    count--;
                  });
                },
                icon: Icon(
                  Icons.plus_one,
                  color: Colors.white,
                  size: 25,
                )),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Text(
                    count.toString(),
                    style:
                    TextStyle(fontSize: 25, color: Colors.black),
                  )),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                icon: Icon(
                  Icons.plus_one,
                  color:Colors.white,
                  size: 25,
                )),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
               // if (count > 0) {
                  cartitems.add(CartItem(
                    // name: widget.cate.productname!,
                    // image: widget.cate.productImg1!,
                    // count: count,
                    // singleprice: widget.cate.productPrice!,
                    // totalprice: widget.cate.productPrice! * count,
                    name: "esraa",
                    image: "https://t3.ftcdn.net/jpg/02/94/33/30/240_F_294333093_nL5BCbcquiDb9e8QxJex5J26TM6EDXmr.jpg",
                    count: 2,
                    singleprice: 1500,
                    totalprice:3400,
                  ));

                  print(cartitems!.length);
                },
                //else{
                //  SnackBar(content: Text("Please Add Quantity"));
               // }
            //  },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                        color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child:Column( children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 50, 0, 15),
             //padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(widget.cate.img1!),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
              children: [
                // Padding(padding: EdgeInsets.fromLTRB(5, 1, 0, 200),
                //   child: IconButton(
                //     icon: Icon(Icons.arrow_back_ios, color: Colors.black,size: 20,),
                //     onPressed: () {
                //       Navigator.push(context, MaterialPageRoute(builder: (
                //           context) => dert()));
                //     },
                //   ),),
               CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => show()));
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),




                // Padding(padding: EdgeInsets.fromLTRB(250, 1, 0, 200),
                //   child: IconButton(
                //     icon: Icon(Icons.bookmark_add, color: Colors.black,size: 20,),
                //     onPressed: () {
                //       // Navigator.push(context, MaterialPageRoute(builder: (
                //       //     context) => noha()));
                //       FireStore.AddToWishList("pro1", "ddddddd", 1300, 1500, "hhhhh1", "hhhhhh2", "hhh3");
                //     },
                //   ),),
       CircleAvatar(
                  radius: 15,
                  backgroundColor:Colors.white ,
                  child: IconButton(
                    onPressed: () {
                      FireStore.AddToWishList("pro1", "ddddddd", 1300, 1500, "hhhhh1", "hhhhhh2", "hhh3");
                    },
                    icon: Icon(
                      Icons.bookmark_add,
                      color:Colors.black,
                      size: 20,
                    ),
                  ),
                ),



              ]
          ),),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                print('Box1 Clicked');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 50, 0, 15),
                //   padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        widget.cate.img2!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),),
            GestureDetector(
              onTap: () {
                print('Box2 Clicked');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(15, 50, 0, 15),
                //   padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        widget.cate.img3!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),),
            GestureDetector(
              onTap: () {
                print('Box3 Clicked');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(15, 50, 0, 15),
                //   padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        widget.cate.img1!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),),
          ],),
        Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
            child: Text(
              widget.cate.name!,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            )),
        Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
            child: Text(
              widget.cate.pro_description!,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            )),
        Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
            child: Text(
              widget.cate.price1!.toString(),
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            )),
        Row(
          children: [
            Container(
                height: 50,
                width: 80,
              decoration:  BoxDecoration(
                color: widget.cate.productcolor1!,
                borderRadius: BorderRadius.all(Radius.circular(10)),),
              margin: EdgeInsets.fromLTRB(15, 10, 0, 0),

                ),

            Container(
              height: 50,
              width: 80,
              margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
              decoration:  BoxDecoration(
                color: widget.cate.productcolor2!,
                borderRadius: BorderRadius.all(Radius.circular(10)),),
            ),
            Container(
              height: 50,
              width: 80,
              margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
              decoration:  BoxDecoration(
                color: widget.cate.productcolor3!,
                borderRadius: BorderRadius.all(Radius.circular(10)),),
            ),
          ],
        ),
        Row(
          children: [
            Container(
                height: 50,
                width: 80,
                padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                child: ElevatedButton(
                  child: const Text('S'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                    ),
                  ),
                )
            ),
            Container(
                height: 50,
                width: 80,
                padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                child: ElevatedButton(
                  child: const Text('m'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                    ),
                  ),
                )
            ),
            Container(
                height: 50,
                width: 80,
                padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                child: ElevatedButton(
                  child: const Text('l'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                    ),
                  ),
                )
            ),
            Container(
                height: 50,
                width: 80,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ElevatedButton(
                  child: const Text('xl'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                    ),
                  ),
                )
            ),
          ],
        ),

      ]))
    ,);}

}

