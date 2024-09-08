import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterrestaurant/pages/account/register.dart';
class Mydrawer extends StatefulWidget {
  const Mydrawer({super.key});

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Drawer(
      child: ListView(children: [
        UserAccountsDrawerHeader(accountName: Text('EFAT'), accountEmail:Text('EFAT@gmaail.com'),currentAccountPicture:GestureDetector(child: CircleAvatar(backgroundColor: Colors.red,),) , )
      ],),
    ),);
  }
}
