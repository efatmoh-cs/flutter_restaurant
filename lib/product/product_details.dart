import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterrestaurant/pages/shoping.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class productDetails extends StatefulWidget {
  const productDetails({super.key});

  @override
  State<productDetails> createState() => _productDetailsState();
}

class _productDetailsState extends State<productDetails> {
  //////////////////////////////////////////header
  Widget HeaderBuild() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(148, 90, 90, 100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(20)),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.red,
                )),
          ),
          Expanded(child: Text('')),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white10,
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(20)),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Shoping()));
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                )),
          ),
        ],
      ),
    );
  }
////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////image

  Widget imageproduct() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red,
          boxShadow: [
            BoxShadow(
              color: Colors.white10,
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Image.asset(
            'images/pro1.jpg',
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red,
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.minus,
                            color: Colors.red,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red,
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.plus,
                            color: Colors.red,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
//////////////////////////////////////////////////////////////imageproduct

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: HeaderBuild()),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: ListView(
                children: [
                  imageproduct(), /////////////////////image
                  Container(
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Directionality(
                            textDirection: TextDirection.rtl,
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text('سمك مشوى',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.red)),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          Text('سمك مشوى',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.red)),
                          Expanded(child: Text('')),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Text('سمك مشوى',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.red))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: const Text(
                        'سمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوى سمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوى سمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوىسمك مشوى',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.grey)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 0, left: 1, right: 1),
        child: Container(
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('1500',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white)),
              ),
              Expanded(child: Text('')),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red[100],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.grey),
                      Text('favorite',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.red))
                    ],
                  ),
                ),
              )
            ],
          ),
          height: 70,
          decoration: BoxDecoration(
              color: Colors.red[105],
              gradient: LinearGradient(     ///////line shadow white
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.red,
                    Colors.red, Colors.white, Colors.red,
                  ]),
              boxShadow: [
                BoxShadow(
                  color: Colors.red,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
