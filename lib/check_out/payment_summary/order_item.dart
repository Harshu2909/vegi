// import 'dart:html';

import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  late bool isTrue;
  // const OrderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "assets/vegetable1.jpg",
        width: 60,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "food name",
            style: TextStyle(color: Colors.grey[600]),
          ),
          Text(
            "50 Gm ",
            style: TextStyle(color: Colors.grey[600]),
          ),
          Text(
            "30\$",
            
          ),
        ],
      ),
      subtitle: Text("5"),
    );
  }
}
