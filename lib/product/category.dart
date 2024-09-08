
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterrestaurant/product/subcategory.dart';
class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  var myarray_category = [
    {
      'cat_id': '1',
      "cat_name": 'الماكولات البحريه',
      "cat_image": 'images/cat1.png',
    },
    {
      'cat_id': '2',
      "cat_name": 'المشاوي',
      "cat_image": 'images/cat2.png',
    },
    {
      'cat_id': '3',
      "cat_name": 'cat3',
      "cat_image": 'images/cat3.png',
    },
    {
      'cat_id': '4',
      "cat_name": 'cat4',
      "cat_image": 'images/cat4.png',
    },
    {
      'cat_id': '5',
      "cat_name": 'cat5',
      "cat_image": 'images/cat5.png',
    },
    {
      'cat_id': '6',
      "cat_name": 'cat6',
      "cat_image": 'images/cat6.png',
    },
    {
      'cat_id': '7',
      "cat_name": 'cat7',
      "cat_image": 'images/cat7.png',
    },
    {
      'cat_id': '8',
      "cat_name": 'cat8',
      "cat_image": 'images/cat8.png',
    },
    {
      'cat_id': '9',
      "cat_name": 'cat9',
      "cat_image": 'images/cat9.png',
    },
    {
      'cat_id': '10',
      "cat_name": 'cat10',
      "cat_image": 'images/cat10.png',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(title: Text('قائمة الماكولات'),
      leading: InkWell(onTap: (){

        Navigator.of(context).pop();


      },child: Icon(Icons.arrow_back_ios,color: Colors.black,),),),
        body:  Container(

          child: ListView.builder(
              itemCount: myarray_category.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Singlecategory(
                  cat_id: myarray_category[index]['cat_id'],
                  cat_image: myarray_category[index]['cat_image'],
                  cat_name: myarray_category[index]['cat_name'],
                );
              }),
        ));
  }
}

class Singlecategory extends StatelessWidget {
  final cat_id;
  final cat_name;
  final cat_image;
  const Singlecategory(
      {super.key,
        required this.cat_id,
        required this.cat_name,
        required this.cat_image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Subcategory(cat_id:cat_id,cat_name: cat_name,)));

        },
          child: ListTile(
            leading:
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.red[100],
              ),
              child: Image.asset(
                cat_image,
                fit: BoxFit.cover,
              ),
            ),
            title:  Text(cat_name),
            trailing: Icon(Icons.arrow_back_ios),

          ),
        ),
      ),
    );
  }
}
