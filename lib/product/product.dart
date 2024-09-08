import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrestaurant/product/product_details.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var myarray_product = [
    {
      'pro_id': '1',
      'pro_offer': '1',
      "pro_name": 'cat1',
      "pro_desc": 'prodct prodct prodct ',
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
      'pro_offer': '0',
      "pro_name": 'cat3',
      "pro_desc": 'prodct prodct prodct ',
      "pro_image": 'images/pro3.jpg',
    },
    {
      'pro_id': '3',
      'pro_offer': '0',
      "pro_name": 'cat3',
      "pro_desc": 'prodct prodct prodct ',
      "pro_image": 'images/pro3.jpg',
    },
    {
      'pro_id': '3',
      'pro_offer': '0',
      "pro_name": 'cat3',
      "pro_desc": 'prodct prodct prodct ',
      "pro_image": 'images/pro3.jpg',
    },
    {
      'pro_id': '3',
      'pro_offer': '0',
      "pro_name": 'cat3',
      "pro_desc": 'prodct prodct prodct ',
      "pro_image": 'images/pro3.jpg',
    },
    {
      'pro_id': '3',
      'pro_offer': '0',
      "pro_name": 'cat3',
      "pro_desc": 'prodct prodct prodct ',
      "pro_image": 'images/pro3.jpg',
    },
    {
      'pro_id': '3',
      'pro_offer': '0',
      "pro_name": 'cat3',
      "pro_desc": 'prodct prodct prodct ',
      "pro_image": 'images/pro3.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(height: 500,
      child:Scaffold(appBar: AppBar(title: Text('سمك مشوي'),
        leading: InkWell(onTap: (){

          Navigator.of(context).pop();


        },child: Icon(Icons.arrow_back_ios,color: Colors.black,),)
           )
        ,body: Container(
        child:  ListView.builder(
            itemCount: myarray_product.length,
            // scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Singleproduct(
                pro_id: myarray_product[index]['pro_id'],
                pro_image: myarray_product[index]['pro_image'],
                pro_name: myarray_product[index]['pro_name'],
                pro_desc: myarray_product[index]['pro_desc'],
                pro_offer: myarray_product[index]['pro_offer'],
              );
            }),
      ),) ,
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
    return GestureDetector(onTap: (){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) =>  productDetails()));
    },
      child:Container(color: Colors.grey[200]
          ,margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
       child:  Row(
          children: [
            Container(height: 100,
              width: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                image:DecorationImage(fit:BoxFit.cover,image:  AssetImage(pro_image)
              ),
            )

            ),
            ////////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(height: 100,
                width: 150,
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(pro_name,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Text(pro_desc,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    Text(pro_id,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.cyan),)
                  ],
                ),
              ),
            ),
            ////////////////////////////////////////////favorite
            Padding(
              padding: const EdgeInsets.only(left: 35.0,),
              child: Container(height: 80,
                width: 50,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Icon(Icons.favorite_border),
                    checkoffer(pro_offer)////////////////////////////f
                  ],
                ),
              ),
            )



          ],
        )
      )
      );

  }
//////////////////////////////////////////////////favorite
  Widget checkoffer(pro_offer){
    return pro_offer =='1'?
    Container(
        width: 50,
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.red,
    ),

        child: new Text(
          "عرض",
          style: TextStyle(color: Colors.white),
        ))

    :Text('');
  }

}