import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favorit extends StatefulWidget {
  const Favorit({super.key});

  @override
  State<Favorit> createState() => _FavoritState();
}

class _FavoritState extends State<Favorit> {
  var myarray_product = [
    {
      'pro_id': '1',
      'pro_offer': '1',
      "pro_name": 'cat1',
      "pro_desc": 'prodct prodct prodct prodct prodct prodct',
      "pro_image": 'images/pro1.jpg',
    },
    {
      'pro_id': '2',
      'pro_offer': '1',
      "pro_name": 'cat2',
      "pro_desc": 'prodct vprodct prodct  ',
      "pro_image": 'images/pro2.jpg',
    },
    {
      'pro_id': '3',
      'pro_offer': '1',
      "pro_name": 'cat3',
      "pro_desc": 'prodct prodct prodct ',
      "pro_image": 'images/pro3.jpg',
    },
    {
      'pro_id': '3',
      'pro_offer': '1',
      "pro_name": 'cat3',
      "pro_desc": 'prodct prodct prodct ',
      "pro_image": 'images/pro3.jpg',
    },
    {
      'pro_id': '3',
      'pro_offer': '1',
      "pro_name": 'cat3',
      "pro_desc": 'prodct prodct prodct ',
      "pro_image": 'images/pro3.jpg',
    },
    {
      'pro_id': '3',
      'pro_offer': '1',
      "pro_name": 'cat3',
      "pro_desc": 'prodct prodct prodct ',
      "pro_image": 'images/pro3.jpg',
    },
    {
      'pro_id': '3',
      'pro_offer': '1',
      "pro_name": 'cat3',
      "pro_desc": 'prodct prodct prodct ',
      "pro_image": 'images/pro3.jpg',
    },
    {
      'pro_id': '3',
      'pro_offer': '1',
      "pro_name": 'cat3',
      "pro_desc": 'prodct prodct prodct ',
      "pro_image": 'images/pro3.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('سمك مشوي'),
        leading: InkWell(onTap: (){

          Navigator.of(context).pop();


        },child: Icon(Icons.arrow_back_ios,color: Colors.black,),)
    ),
      
      body: Container(
        child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.8),
            itemCount: myarray_product.length,
            itemBuilder:  (BuildContext context, int index) {
      return Singleproduct(
        pro_id: myarray_product[index]['pro_id'],
        pro_image: myarray_product[index]['pro_image'],
        pro_name: myarray_product[index]['pro_name'],
        pro_desc: myarray_product[index]['pro_desc'],
        pro_offer: myarray_product[index]['pro_offer'],
      );
      }),

      ),
    );
  }
}
class Singleproduct extends StatelessWidget {
  final pro_id;
  final pro_name;
  final pro_image;
  final pro_desc;
  final pro_offer;
  const Singleproduct(
      {super.key, this.pro_id, this.pro_name, this.pro_image, this.pro_desc, this.pro_offer});

  @override
  Widget build(BuildContext context) {
    return Container( margin:EdgeInsets.all(10) ,
      // padding: const EdgeInsets.only(top: 15.0,bottom: 8,right: 8,left: 8),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              alignment:Alignment.topRight,
      child: Icon(Icons.favorite_border,color: Colors.red,)),
          Container(
             height:150,
            width: MediaQuery.of(context).size.width/2,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red[100]),

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                pro_image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          Expanded(
            child: Text(
              pro_name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children :[
            Text(pro_id),
              Expanded(child: Text('')),
              Text(pro_id),
              Icon(Icons.star_border,color: Colors.yellowAccent,size: 25,)
            ],
          )
        ],
      ),
    );
  }
}