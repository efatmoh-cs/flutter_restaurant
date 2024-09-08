import 'package:flutter/material.dart';

import 'config.dart';
import 'tips.dart';

class Getstart extends StatefulWidget {
  const Getstart({super.key});

  @override
  State<Getstart> createState() => _GetstartState();
}

class _GetstartState extends State<Getstart> {
  @override
  Widget build(BuildContext context) {
    double myhight = MediaQuery.of(context).size.height / 2;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: myhight * 1.5,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage(
                        'images/tip0.png',
                      ),
                      fit: BoxFit.fitWidth)),
            ),
            Container(
              height: myhight * 0.5,
              decoration: const BoxDecoration(
                  color: primarycolor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 5)),
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      textDirection: TextDirection.rtl,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'اشهى الماكولات',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          '  ستجد ما تشتهي من ماكولات بحريه ودجاج',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Tips();
                              }));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 20, right: 7, bottom: 7),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      // boxShadow: [
                                      //   BoxShadow(
                                      //       color: Colors.grey,
                                      //       spreadRadius: 5,
                                      //       blurRadius: 7,
                                      //       offset: Offset(0, 5)),
                                      // ],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 16.0,
                                        top: 8.0,
                                        right: 16.0,
                                        bottom: 8.0),
                                    child: Text(
                                      'ابدا من هنا',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  )),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
