import 'package:flutter/material.dart';
import 'package:vegi/screens/home_screen/drawer_sidee.dart';
import 'package:vegi/screens/home_screen/single_product.dart';
import 'package:vegi/screens/search/search.dart';

class HomeScreen extends StatelessWidget {
 



  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: DrawerSidee(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CircleAvatar(
            radius: 17,
            backgroundColor: Color(0xffd4d181),
            child: IconButton(
              onPressed: (() {
                Navigator.of(context).push(MaterialPageRoute(builder: ((context) => Search())));
              }),
              icon: Icon(
                Icons.search,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 17,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.shop,
                size: 20,
                color: Colors.black,
              ),
            ),
          )
        ],
        backgroundColor: Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.red,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/home_screen.jpg"))),
              child: Row(children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(right: 125.0),
                              child: Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xffd6b738),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(50),
                                    )),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 3),
                                  child: Text(
                                    "Vegi",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        shadows: [
                                          BoxShadow(
                                              color: Colors.green,
                                              blurRadius: 5,
                                              offset: Offset(3, 3))
                                        ]),
                                  ),
                                ),
                              )),
                          Text(
                            "40% off",
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.green[100],
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "On all vegetable products",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )),
                Expanded(child: Container()),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hearbs Seasoning",
                  ),
                  Text(
                    "view all",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleProduct(),
                  SingleProduct(),
                  SingleProduct(),
                  SingleProduct(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fresh Fruits",
                  ),
                  Text(
                    "view all",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleProduct(),
                  SingleProduct(),
                  SingleProduct(),
                  SingleProduct(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fresh Fruits",
                  ),
                  Text(
                    "view all",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleProduct(),
                  SingleProduct(),
                  SingleProduct(),
                  SingleProduct(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
