

import 'package:esraaaa/dert.dart';
import 'package:flutter/material.dart';

import 'cartaddress.dart';
import 'modles/cartitem.dart';


class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {

  int total = 0;

  totalprice(){
    for(int i = 0; i<cartitems.length;i++){
      setState(() {
        total += cartitems[i].totalprice!;

      });
    }
    return total;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    totalprice();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(  children: [
            Padding(padding:EdgeInsets.fromLTRB(60, 0, 0, 0),child:
            Text("Shopping Cart", style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20))),

          ],)
      ),
      floatingActionButton:Container(
        margin: EdgeInsets.fromLTRB(30, 0, 10, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2, color: Colors.black),
          color: Colors.white,
        ),
        width: double.infinity,
        height: 100,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(children: [
              SizedBox(width: 50,),
              Text("Total :",style: TextStyle(color:  Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(width: 20,),
              Text(total.toString(),style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
              SizedBox(width: 40,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CartAddress(nettotal: total,)));



              }, child: Text("Confirm",style: TextStyle(fontSize: 13,color: Colors.white),),style: ElevatedButton.styleFrom(
                backgroundColor:  Colors.orange[900],
               // fixedSize: Size(80,50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),),
            ],),

          ],
        ),
      )

      ,
      body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                height: MediaQuery.of(context).size.height ,
                child: ListView.builder(

                    itemCount: cartitems.length ,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image(image: NetworkImage(cartitems[index].image!)),
                        title: Text(cartitems[index].name!),
                        subtitle: Text('x${cartitems[index].count}  ${cartitems[index].singleprice}\$            ${cartitems[index].totalprice}\$'),
                        trailing: IconButton(icon:Icon(Icons.delete), onPressed: () {
                          setState(() {
                            cartitems.removeAt(index);
                          });
                        }),
                      );
                    }),
              ),





            ],
          )),
    );
  }
}