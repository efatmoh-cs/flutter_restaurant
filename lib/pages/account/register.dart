import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterrestaurant/pages/account/login.dart';

import '../config.dart';
import '../home.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _phoneRegExp = RegExp(r'^\+?[0-9]{10,15}$');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Container(
                child: Expanded(
                  child: Form(
                      child: ListView(children: [
                    Container(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("انشاء حساب",
                          // textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.red,
                              fontWeight: FontWeight.bold)),
                    )),
                    Container(
                        child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 15,
                        top: 5,
                        left: 8,
                        right: 8,
                      ),
                      child: Text(" جديد",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.red,
                              fontWeight: FontWeight.bold)),
                    )),
                    Padding(
                        padding: const EdgeInsets.all(10),
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
                              child: TextFormField(
                                textAlign: TextAlign.right,
                                decoration: InputDecoration(
                                  hintText: 'الاسم بالكامل',
                                  border: InputBorder.none,
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ))),
                    Padding(
                        padding: const EdgeInsets.all(10),
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
                            child: TextFormField(
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                hintText: 'البريد الالكتروني',
                                border: InputBorder.none,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter an email address';
                                }
                                final emailRegex =
                                    RegExp(r'^[^@]+@[^@]+\.[^@]+');
                                if (!emailRegex.hasMatch(value)) {
                                  return 'الرجاء ادخال البريد الالكتروني';
                                }
                                return null;
                              },
                            ),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(10),
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
                            child: TextFormField(
                                textAlign: TextAlign.right,
                                decoration: InputDecoration(
                                  hintText: 'كلمه المرور',
                                  border: InputBorder.none,
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter a phone number';
                                  } else if (!_phoneRegExp.hasMatch(value)) {
                                    return 'Please enter a valid phone number';
                                  }
                                  return null;
                                }),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 20,
                          left: 10,
                          right: 10,
                        ),
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
                            child: TextFormField(
                              textAlign: TextAlign.right,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: 'رقم الهاتف',
                                border: InputBorder.none,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                          ),
                        )),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 8, right: 8),
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
                    Container(
                        margin: EdgeInsets.only(
                          top: 40,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                            'الرجاء الموافقه على الشروط والاحكام للتطبيق',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold)))
                  ])),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        child: Text('هل لديك حساب عليك الدخول',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ))),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Text(
                          'دخول',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
