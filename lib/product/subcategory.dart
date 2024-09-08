
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterrestaurant/product/product.dart';

class Subcategory extends StatefulWidget {
  const Subcategory({super.key, this.cat_id, this.cat_name});
  final cat_id;
  final cat_name;

  @override
  State<Subcategory> createState() => _SubcategoryState();
}

class _SubcategoryState extends State<Subcategory> {
  var myarray_Subcategory = [
    {
      'sub_id': '1',
      "sub_name": 'سمك مقلي',
      "sub_image": 'images/cat1.png',
    },
    {
      'sub_id': '2',
      "sub_name": 'المشاوي',
      "sub_image": 'images/cat2.png',
    },
    {
      'sub_id': '3',
      "sub_name": 'sub3',
      "sub_image": 'images/cat3.png',
    },
    {
      'sub_id': '4',
      "sub_name": 'sub4',
      "sub_image": 'images/cat4.png',
    },
    {
      'sub_id': '5',
      "sub_name": 'sub5',
      "sub_image": 'images/cat5.png',
    },
    {
      'sub_id': '6',
      "sub_name": 'sub6',
      "sub_image": 'images/cat6.png',
    },
    {
      'sub_id': '7',
      "sub_name": 'sub7',
      "sub_image": 'images/cat7.png',
    },
    {
      'sub_id': '8',
      "sub_name": 'sub8',
      "sub_image": 'images/cat8.png',
    },
    {
      'sub_id': '9',
      "sub_name": 'sub9',
      "sub_image": 'images/cat9.png',
    },
    {
      'sub_id': '10',
      "sub_name": 'sub10',
      "sub_image": 'images/cat10.png',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white70,
        appBar: AppBar(title: Text(widget.cat_name),
      leading: InkWell(onTap: (){

        Navigator.of(context).pop();


      },child: Icon(Icons.arrow_back_ios,color: Colors.black,),),),
        body:  Container(

          child: ListView.builder(
              itemCount: myarray_Subcategory.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return SingleSubcategory(
                  sub_id: myarray_Subcategory[index]['sub_id'],
                  sub_image: myarray_Subcategory[index]['sub_image'],
                  sub_name: myarray_Subcategory[index]['sub_name'],
                );
              }),
        ));
  }
}

class SingleSubcategory extends StatelessWidget {
  final sub_id;
  final sub_name;
  final sub_image;
  const SingleSubcategory(
      {super.key,
        required this.sub_id,
        required this.sub_name,
        required this.sub_image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: InkWell(onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>  Product()));///////product
        }
          ,
          child: ListTile(
            leading:
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.red[100],
              ),
              child: Image.asset(
                sub_image,
                fit: BoxFit.cover,
              ),
            ),
            title:  Text(sub_name),
            trailing: Icon(Icons.arrow_back_ios),

          ),
        ),
      ),
    );
  }
}
