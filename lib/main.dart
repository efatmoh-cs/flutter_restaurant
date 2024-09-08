

import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/flutter_splash_screen.dart';
import 'package:flutterrestaurant/pages/getstart.dart';
import 'package:flutterrestaurant/pages/splashscreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override


  // ///hide your splash screen
  // Future<void> hideScreen() async {
  //   Future.delayed(const Duration(milliseconds: 1), () {
  //     FlutterSplashScreen.hide();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:splashScreen()
      // Center(
      //  child: GestureDetector(
      //    onTap: (){
      //
      //      Navigator.push(
      //        context,
      //        MaterialPageRoute(
      //          builder: (context){
      //              return Getstart() ;}
      //        ),
      //      );
      //
      //    },
      //      child: Text('HELL')),
      // )

       );
        // theme: ThemeData(fontFamily: 'GE_ar'),
        // debugShowCheckedModeBanner: false,
        // home: new SplashScreen(
        //   seconds: 3,
        //   routeName: "/",
        //   // navigateAfterSeconds:
        //   // G_use_id_val == null ? new Login() : new Home(),
        //   title: new Text(
        //     'مرحبا بكم في تطبيق ادارة المطعم',
        //     style: new TextStyle(
        //         fontWeight: FontWeight.bold,
        //         fontSize: 20.0,
        //         color: Colors.white),
        //   ),
        //   /*image: new Image.network(
        //   'https://flutter.io/images/catalog-widget-placeholder.png'),*/
        //   backgroundColor: ,
        //   styleTextUnderTheLoader: new TextStyle(),
        //   photoSize: 100.0,
        //   onClick: () => print("restaurant"),
        //   loaderColor: Colors.white,
        // ));

  }
}
