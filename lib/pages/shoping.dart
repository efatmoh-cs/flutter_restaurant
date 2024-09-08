import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Shoping extends StatefulWidget {

  @override
  State<Shoping> createState() => _ShopingState();
}

class _ShopingState extends State<Shoping> {
  var myprod = [
    {
      'pro_id': '1',
      "pro_name": 'cat1',
      "pro_price": 'cat1',
      "pro_image": 'images/cat1.png',
    },
    {
      'pro_id': '2',
      "pro_name": 'cat1',
      "pro_price": '100',
      "pro_image": 'images/cat1.png',
    },
    {
      'pro_id': '3',
      "pro_name": 'cat1',
      "pro_price": '200',
      "pro_image": 'images/cat1.png',
    },
    {
      'pro_id': '1',
      "pro_name": 'cat1',
      "pro_price": 'cat1',
      "pro_image": 'images/cat1.png',
    },
    {
      'pro_id': '1',
      "pro_name": 'cat1',
      "pro_price": 'cat1',
      "pro_image": 'images/cat1.png',
    },
    {
      'pro_id': '1',
      "pro_name": 'cat1',
      "pro_price": 'cat1',
      "pro_image": 'images/cat1.png',
    },
    {
      'pro_id': '1',
      "pro_name": 'cat1',
      "pro_price": 'cat1',
      "pro_image": 'images/cat1.png',
    },
  ];
  void _showSheetMessage(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0))),
        context: context,
        builder: (BuildContext bc) {
          return Container(
              child: ListView(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
                          child:
                          new Icon(Icons.done, size: 55.0, color: Colors.red)),
                      new Text(
                        "شكرا لطلبك",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),
                      ),
                      new Text(
                        "يمكنك تتبع الطلبية من خلال الضغط على الزر في الاسفل",
                        style: TextStyle(color: Colors.grey, fontSize: 16.0),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50.0),
                        child: MaterialButton(
                            child: Container(
                              margin: EdgeInsets.all(15.0),
                              width: MediaQuery.of(context).size.width,
                              child: Text("تابع الطلبية",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  )),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            onPressed: () {

                            }),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: MaterialButton(
                            child: Container(
                              margin: EdgeInsets.all(15.0),
                              width: MediaQuery.of(context).size.width,
                              child: Text("الانتقال الى المأكولات",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  )),
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            onPressed: () {}),
                      )
                    ],
                  )
                ],
              ));
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('add to card',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // height: 700,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount: myprod.length,
              itemBuilder: (BuildContext context, int index) {
                return SingleProduct(
                  pro_id: myprod[index]['pro_id'],
                  pro_image: myprod[index]['pro_image'],
                  pro_name: myprod[index]['pro_name'],
                  pro_price: myprod[index]['pro_price'],
                  pro_opg: myprod[index]['pro_opg'],
                );
              }),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 0, left: 1, right: 1),

        child: Container(height: 260,
          child: Column(
            children: [Card(
              child:Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('اجمالي المبلغ'),
                          Expanded(child: Text('')),
                          Text('100'),
                        ],
                      ),
                      Divider(color: Colors.black,),
                      Row(
                        children: [
                          Text('اجمالي المبلغ'),
                          Expanded(child: Text('')),
                          Text('100'),
                        ],
                      ),
                      Divider(color: Colors.black,),
                      Row(
                        children: [
                          Text('اجمالي المبلغ'),
                          Expanded(child: Text('')),
                          Text('100'),
                        ],
                      ),
                      Divider(color: Colors.black,),

                    ],
                  ),
                ),
              )
            )
             , Padding(
                padding: const EdgeInsets.only(bottom: 10.0),

                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.red,

                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [


                      Container(

                        child: const Row(
                          children: [

                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('اضافه الى السله',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      // gradient: LinearGradient(     ///////line shadow white
                      //     begin: Alignment.topCenter,
                      //     end: Alignment.bottomCenter,
                      //     colors: <Color>[
                      //       Colors.yellow,
                      //       Colors.red, Colors.yellowAccent, Colors.red,
                      //     ]),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [


                      Container(

                        child: GestureDetector(
                          onTap: () {
                            _showSheetMessage(context);
                          },
                          child: Text("تاكيد الطلب",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final pro_id;
  final pro_name;
  final pro_image;
  final pro_opg;
  final pro_price;

  const SingleProduct(
      {super.key,
      this.pro_id,
      this.pro_name,
      this.pro_image,
      this.pro_opg,
      this.pro_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(alignment: Alignment.bottomLeft,child: Icon(
                Icons.cancel,
            color: Colors.red,

            size: 25 ,),),
        )
         , Container(
            child: ListTile(
              title: Text(pro_name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black)),
              subtitle: Text(pro_price),
              leading: Container(
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(pro_image), fit: BoxFit.cover),
                    shape: BoxShape.rectangle),
              ),
              trailing: Container(
                width: 50,
                child: Row(
                  children: [
                    GestureDetector(
                      child: Container(
                        child: FaIcon(
                          FontAwesomeIcons.plus,
                          color: Colors.white,
                          size: 19,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.cyan),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text('5',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.red)),
                    )
                   , GestureDetector(
                      child: Container(
                        child: FaIcon(
                          FontAwesomeIcons.minus,
                          color: Colors.white,
                          size: 19,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.cyan),
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
