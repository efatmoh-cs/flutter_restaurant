import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterrestaurant/pages/account/forgetpassword.dart';
import 'package:flutterrestaurant/pages/account/register.dart';
import 'package:flutterrestaurant/product/product_details.dart';

import '../favorite/favorit.dart';
import '../order/tracking.dart';
import '../product/category.dart';
import 'account/changepassword.dart';
import 'account/myprofile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var myarray_category = [
    {
      'cat_id': '1',
      "cat_name": 'cat1',
      "cat_image": 'images/cat1.png',
    },
    {
      'cat_id': '2',
      "cat_name": 'cat2',
      "cat_image": 'images/cat2.png',
    },
    {
      'cat_id': '3',
      "cat_name": 'cat3',
      "cat_image": 'images/cat3.png',
    },
    {
      'cat_id': '4',
      "cat_name": 'cat4',
      "cat_image": 'images/cat4.png',
    },
    {
      'cat_id': '5',
      "cat_name": 'cat5',
      "cat_image": 'images/cat5.png',
    },
    {
      'cat_id': '6',
      "cat_name": 'cat6',
      "cat_image": 'images/cat6.png',
    },
    {
      'cat_id': '7',
      "cat_name": 'cat7',
      "cat_image": 'images/cat7.png',
    },
    {
      'cat_id': '8',
      "cat_name": 'cat8',
      "cat_image": 'images/cat8.png',
    },
    {
      'cat_id': '9',
      "cat_name": 'cat9',
      "cat_image": 'images/cat9.png',
    },
    {
      'cat_id': '10',
      "cat_name": 'cat10',
      "cat_image": 'images/cat10.png',
    }
  ];
  var myarray_product = [
    {
      'pro_id': '1',
      "pro_name": 'cat1',
      "pro_desc": 'prodct prodct prodct prodct prodct prodct',
      "pro_image": 'images/pro1.jpg',
    },
    {
      'pro_id': '2',
      "pro_name": 'cat2',
      "pro_desc": 'prodct vprodct prodct prodct prodct prodct ',
      "pro_image": 'images/pro2.jpg',
    },
    {
      'pro_id': '3',
      "pro_name": 'cat3',
      "pro_desc": 'prodct prodct prodct prodct prodct prodct',
      "pro_image": 'images/pro3.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(appBar:AppBar(title:Text('SSS') ),
        drawer: Drawer( child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/rest.jpg"),
                      fit: BoxFit.cover),
                ),
                currentAccountPicture: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("images/rest1.jpg")),
                accountEmail: Text(""),
                accountName: Text("",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                    )),
              ),
              ListTile(
                title: Text(
                  " 'الاشعارات",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.home,
                    color: Colors.red

                  // Icons.download,
                  // size: 24.0,
                ),
                trailing:Icon(
                  Icons.arrow_back_ios,color: Colors.red,

                  // Icons.download,
                  // size: 24.0,
                ),

              ),

          ExpansionTile(
            leading: Icon(Icons.person,color: Colors.red,),
            title: Text('حسابي'),
            trailing: Icon(Icons.arrow_drop_down,color: Colors.red,
            size: 30,),
            children: [
              Divider(color: Colors.black,),
            ListTile(
            title: Text("تغيير اعدادات الحساب",
            style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black)),
            leading: Icon(
            Icons.settings, color: Colors.red
            ), trailing: Icon(
            Icons.arrow_back_ios,color: Colors.red

            // Icons.download,
            // size: 24.0,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Myprofile()));
            },
            ),
              Divider(color: Colors.black,),
            ListTile(
            title: Text("تغيير كلمه المرور",
            style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black)),
            leading: Icon(
            Icons.lock_open, color: Colors.red
            ), trailing: Icon(
            Icons.arrow_back_ios,color: Colors.red

            // Icons.download,
            // size: 24.0,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Changepassword()));
            },
            ),

            ],

          )




             , ListTile(
                  title: Text(
                    'مفضلاتي',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  leading: Icon(
                    Icons.favorite,
                      color: Colors.red

                  ),
                  trailing: Icon(
                  Icons.arrow_back_ios,color: Colors.red

    // Icons.download,
    // size: 24.0,
    ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  Favorit()));
                  }),
              ListTile(
                title: Text(
                  "تتبع الطلبية",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                    Icons.history,
                    color: Colors.red

                  // Icons.download,
                  // size: 24.0,
                ),
                trailing:Icon(
                  Icons.arrow_back_ios,color: Colors.red,

                  // Icons.download,
                  // size: 24.0,
                ),
    onTap: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) =>  Tracking()));
    }
              ),
              ListTile(
                title: Text(
                  "قائمة الماكولات",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                    Icons.menu,
                    color: Colors.red

                  // Icons.download,
                  // size: 24.0,
                ),
                trailing:Icon(
                  Icons.arrow_back_ios,color: Colors.red,

                  // Icons.download,
                  // size: 24.0,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Category()));
                },

              ),

              ListTile(
                title: Text(
                  "من نحن",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                    Icons.nature_people_rounded,
                    color: Colors.red

                  // Icons.download,
                  // size: 24.0,
                ),
                trailing:Icon(
                  Icons.arrow_back_ios,color: Colors.red,

                  // Icons.download,
                  // size: 24.0,
                ),

              ),

            ],
          ),
        ],
      ),)
       , body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(right: 15, top: 10, bottom: 10),
                child: Text(
                  'توصيل الطلب الى',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 15),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      child: Text(
                        'موقع الزبون',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_drop_down))
                ],
              ),
              Container(
                height: 60,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200]),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 20.0,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'بحث',
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  height: 170,
                  child: Expanded(
                    child: ListView.builder(
                        itemCount: myarray_category.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Singlecategory(
                            cat_id: myarray_category[index]['cat_id'],
                            cat_image: myarray_category[index]['cat_image'],
                            cat_name: myarray_category[index]['cat_name'],
                          );
                        }),
                  )),
              Container(
                child: Column(
                  children: [
                    GestureDetector(onTap:(){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => productDetails()));
                    },
                      child: Container(
                        height: 390,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                        child: ListView.builder(
                            itemCount: myarray_product.length,
                            // scrollDirection: Axis.vertical,
                            itemBuilder: (BuildContext context, int index) {
                              return Singleproduct(
                                pro_id: myarray_product[index]['pro_id'],
                                pro_image: myarray_product[index]['pro_image'],
                                pro_name: myarray_product[index]['pro_name'],
                                pro_desc: myarray_product[index]['pro_desc'],
                              );
                            }),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 12,
          unselectedFontSize: 13,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,

              ),
              label: 'الاشعارات',
            ), BottomNavigationBarItem(
              icon: Icon(
                Icons.restaurant_menu,
              ),
              label: 'العروض',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'حسابي',
            )
          ],
        ),
      ),
    );
  }
}

class Singleproduct extends StatelessWidget {
  final pro_id;
  final pro_name;
  final pro_image;
  final pro_desc;

  const Singleproduct(
      {super.key, this.pro_id, this.pro_name, this.pro_image, this.pro_desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red[100]),
              child: Image.asset(
                pro_image,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              pro_name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(pro_desc),
          ],
        ),
      ),
    );
  }
}

class Singlecategory extends StatelessWidget {
  final cat_id;
  final cat_name;
  final cat_image;
  const Singlecategory(
      {super.key,
      required this.cat_id,
      required this.cat_name,
      required this.cat_image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.red[100],
              ),
              child: Image.asset(
                cat_image,
                fit: BoxFit.cover,
              ),
            ),
            Text(cat_name)
          ],
        ),
      ),
    );
  }
}
