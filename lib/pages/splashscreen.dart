import 'package:flutter/material.dart';

import 'config.dart';
import 'getstart.dart';
import 'home.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  get item => null;

  @override
  void initState() {
    // Timer(Duration(seconds: 5),(){
    //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>HomePage()));
    // });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: primarycolor,
      body:Stack (
        alignment: Alignment.center,
        children: [
          Image.asset(
            "images/pro2.jpg",
            height: double.infinity,
            // width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          Container(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
            // Image.asset(''),
                SizedBox(height: 20,),

                GestureDetector( onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Getstart()));
                },
                  child: Text('القائمة الرئيسية',style: TextStyle(color: Colors.white,fontSize: 38,fontWeight: FontWeight.bold),),

                )
              ],),
          )

        ],
      ),
    );

  }
}
