import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterrestaurant/pages/account/forgetpassword.dart';
import 'package:flutterrestaurant/pages/account/register.dart';

import '../config.dart';

class Changepassword extends StatefulWidget {
  const Changepassword({super.key});

  @override
  State<Changepassword> createState() => _ChangepasswordState();
}

class _ChangepasswordState extends State<Changepassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
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
                            child: Text("سجل الدخول الى حسابك من هنا",
                                // textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold)),
                          )),

                      Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:  Color.fromRGBO(209, 209, 220,
                                    1.0),),
                              margin: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: TextFormField(textAlign: TextAlign.right,
                                  decoration: InputDecoration(
                                    hintText: 'كلمه المرور الحاليه',
                                    border: InputBorder.none,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              )
                          )
                      ),
                      Padding(
                          padding: const EdgeInsets.all(20),
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
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(textAlign: TextAlign.right,
                                      decoration: InputDecoration(
                                        hintText: ' كلمه المرور الجديده',
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

                                ],
                              ),
                            ),
                          )
                      ),
                      Padding(
                          padding: const EdgeInsets.all(20),
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
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(textAlign: TextAlign.right,
                                      decoration: InputDecoration(
                                        hintText: 'تاكيد كلمه المرور',
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

                                ],
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
                          padding: const EdgeInsets.only(top: 20, left: 8, right: 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: primarycolor,
                            ),
                            child: Text(
                              'حفظ',
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

            ],
          ),
        ));
  }
}
