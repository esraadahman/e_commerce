import 'package:esraaaa/cat.dart';
import 'package:esraaaa/modles/catogry.dart';
import 'package:esraaaa/noha.dart';
import 'package:flutter/material.dart';
// void main() {
//   runApp(CategoryWidget());
// }


class CategoryWidget extends StatefulWidget{
  CategoryWidget({super.key,
    required this.cate});
  Catogry cate;
  State<CategoryWidget> createState() => _CategoryWidget();
}

class _CategoryWidget extends State<CategoryWidget> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CategoriesScreen(name: widget.cate.name)));
      print('Box1 Clicked');
    },
    child:
      Container(
      padding: const EdgeInsets.all(8.0),
      width: 150,
      height: 90,
        child:Column(
          children:[
        Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.yellow[300],
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: NetworkImage(widget.cate.image1),
              fit: BoxFit.fill,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),

        ),
            Padding(padding:EdgeInsets.fromLTRB(5, 5, 0, 0), //apply padding to all four sides
                child:
                Text(widget.cate.name,style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 25),)),
          ]),

    ));
  }
}


