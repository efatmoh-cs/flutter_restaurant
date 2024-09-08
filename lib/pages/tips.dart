import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:page_indicator/page_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'account/register.dart';
import 'config.dart';

class Tips extends StatefulWidget {
  const Tips({super.key});

  @override
  State<Tips> createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  var myarry = [
    Single()
    //  "title": "ابحث عن الماكولات",
    //  "info": "افضل الاطعمه التي تبحث عنها",
    // " image": "images/tip0.png",

    ,
    SingleTips(),
    // "title": "ابحث عن الماكولات",
    // "info": "افضل الاطعمه التي تبحث عنها",
    // "image": "images/tip2.png",

    // {"title": "ابحث عن الماكولات",
    //  " info": "افضل الاطعمه التي تبحث عنها",
    //   "image": "images/tip3.png",
    // }

    Tip()
  ];
  @override
  Widget build(BuildContext context) {
    double myhight = MediaQuery.of(context).size.height / 4;

    return Scaffold(
      // appBar: AppBar(actions: [Text(
      //                     'دخول',
      //                     style: TextStyle(
      //                         color: Colors.red,
      //                         fontWeight: FontWeight.bold,
      //                         fontSize: 25),)],),
      body: SafeArea(
        top: true,
        minimum: EdgeInsets.only(top: 20.0),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 290),
                child: Container(
                  child: GestureDetector(onTap: (){},
                    child: Text(
                      'دخول',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
              ),
              // Expanded(
                // child: Container(
                //   height: myhight * 3,
                //   child: PageIndicatorContainer(
                //     shape: IndicatorShape.circle(),
                //     length: myarry.length,
                //     align: IndicatorAlign.bottom,
                //     indicatorColor: Colors.cyan,
                //     child: PageView.builder(
                //         physics: AlwaysScrollableScrollPhysics(),
                //         scrollDirection: Axis.horizontal,
                //         itemCount: myarry.length,
                //         itemBuilder: (BuildContext context, index) {
                //           return myarry[index];
                //         }),
                //   ),
                // ),
              // ),
              Container(
                height: myhight,
                decoration: const BoxDecoration(
                    // color: Colors.white,
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Colors.grey,
                    //       spreadRadius: 5,
                    //       blurRadius: 7,
                    //       offset: Offset(0, 5)),
                    // ],
                    // borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(20),
                    //     topRight: Radius.circular(20),
                    //     bottomLeft: Radius.circular(20),
                    //     bottomRight: Radius.circular(20))
                    ),
                child: ListView(
                  children: [
                    Column(
                      textDirection: TextDirection.rtl,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>Register()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: primarycolor,
                              ),
                              child: Text(
                                'تسجيل الدخول',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                        MaterialButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 15.0, top: 8, left: 8, right: 8),
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.facebook,
                                        size: 25,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'متابعه باستخدام فيس بوك',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  )),
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SingleTips extends StatelessWidget {
  // final String? title;
  //  final String? info;
  // final String ?image;
  //   SingleTips({super.key, required this.title, required this.info, required this.image});
  // SingleTips({required this.title,this.image,this.info})
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          alignment: Alignment.center,
          // padding: EdgeInsets.all(10),
          child: Image.asset(
            'images/top.png',
            fit: BoxFit.cover,
          ),
        )),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Text(
            'asde',
            style: TextStyle(
                color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 40.0),
          child: Text(
            'asde',
            style: TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

class Single extends StatefulWidget {
  // final String? title;
  // final String? info;
  // final String ?image;
  // const Single({super.key, this.title, this.info, this.image});

  @override
  State<Single> createState() => _SingleState();
}

class _SingleState extends State<Single> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(50),
        child: Image.asset(
          'images/tip2.png',
          fit: BoxFit.cover,
        ),
      )),
      Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Text(
          'asde',
          style: TextStyle(
              color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: Text(
          'asde',
          style: TextStyle(
              color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      )
    ]);
  }
}

class Tip extends StatefulWidget {
  const Tip({super.key});

  @override
  State<Tip> createState() => _TipState();
}

class _TipState extends State<Tip> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(50),
        child: Image.asset(
          'images/tip3.png',
          fit: BoxFit.cover,
        ),
      )),
      Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Text(
          'asde',
          style: TextStyle(
              color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: Text(
          'asde',
          style: TextStyle(
              color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      )
    ]);
  }
}
