import 'package:flutter/material.dart';

class SingleItem extends StatelessWidget {
  bool? isBool = false;
  SingleItem({this.isBool});

  // const SingleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
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
                  mainAxisAlignment: isBool == false
                      ? MainAxisAlignment.spaceAround
                      : MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Product name",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "50\$50 Gram",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    isBool == false
                        ? Container(
                            height: 30,
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
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
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
                        : Text("50 Grams")
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                      height: 100,
                      padding: isBool == false
                          ? EdgeInsets.symmetric(horizontal: 15, vertical: 32)
                          : EdgeInsets.only(left: 15, right: 15),
                      child: isBool == false
                          ? Container(
                              height: 25,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Color(0xffd1ad17),
                                    size: 15,
                                  ),
                                  Text(
                                    "ADD",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xffd1ad17),
                                    ),
                                  )
                                ],
                              )),
                            )
                          : Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(
                                  Icons.delete,
                                  size: 30,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 25,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: Color(0xffd1ad17),
                                        size: 20,
                                      ),
                                      Text(
                                        "ADD",
                                        style: TextStyle(
                                          fontSize: 9,
                                          color: Color(0xffd1ad17),
                                        ),
                                      )
                                    ],
                                  )),
                                )
                              ],
                            ))),
            ],
          ),
        ),
        isBool == false
            ? Container()
            : Divider(
                height: 1,
                color: Colors.black45,
              )
      ],
    );
  }
}
