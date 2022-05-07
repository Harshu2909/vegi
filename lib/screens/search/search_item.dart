import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: 100,
            child: Center(
              child: Image(image: AssetImage("assets/vegetable1.jpg")),
            ),
          )),
          Expanded(
              child: Container(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "Product name",
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "50\$50 Gram",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Container(
                  height: 35,
                  margin: EdgeInsets.only(right: 15),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        "50 Gram",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )),
                      Center(
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 32),
            child: Container(
              height: 25,
              width: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add, color: Color(0xffd1ad17),size: 20,),
                  Text(
                        "ADD",
                        style: TextStyle(color: Color(0xffd1ad17), ),
                      )
    
                ],
              )),
            ),
          ))
        ],
      ),
    );
  }
}
