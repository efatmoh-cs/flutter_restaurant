import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterrestaurant/pages/account/register.dart';

import '../config.dart';
class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            iconSize: 25,
            color: Colors.black,
          ),
          backgroundColor: Colors.white70,
          elevation: 0,
        ),
        body:
        Directionality(textDirection: TextDirection.rtl,
          child: Column(
            children: [    Container(
              child: Expanded(
                child: Form(
                    child: ListView(children: [
                      Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("نسيت كلمه المرور",
                                // textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold)),
                          )),

                      Container(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("قم بادخال الايميل الصحيح ليتم ارسال كلمه المرور",
                                // textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                   )),
                          )),
                      Padding(
                          padding: const EdgeInsets.all(30),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(209, 209, 220, 1.0),
                            ),
                            margin: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: TextFormField(textAlign: TextAlign.right,
                                decoration: InputDecoration(
                                  hintText: 'البريد الالكتروني',
                                  border: InputBorder.none,
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter an email address';
                                  }
                                  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                                  if (!emailRegex.hasMatch(value)) {
                                    return 'الرجاء ادخال البريد الالكتروني';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          )
                      ),


                      MaterialButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Register()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25, left: 8, right: 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: primarycolor,
                            ),
                            child: Text(
                              'ارسال',
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

                    ])
                ),

              ),


            ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        child: Text('ليس لديك حساب عليك التسجيل', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                          fontSize: 20,))),
                    GestureDetector(onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                        child: Text('تسجيل جديد', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold,fontSize: 20),))


                  ],
                ),
              )
            ],
          ),
        ));
  }
}
