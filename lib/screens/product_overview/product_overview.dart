import 'package:flutter/material.dart';

enum SinginCharacter { fill, outline }

class ProductOverview extends StatefulWidget {
  final  productName;
  final  productImage;
  final int? productPrice;
  final String? productId;

  ProductOverview(
      {this.productId, this.productImage, this.productName, this.productPrice});

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  SinginCharacter _character = SinginCharacter.fill;

  Widget bottomNavigationBar(
      {Color? iconColor,
      Color? backgroundcolor,
      Color? color,
      String? title,
      IconData? iconData}) {
    return Expanded(
        child: Container(
      color: backgroundcolor,
      padding: EdgeInsets.all(20),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          iconData,
          size: 17,
          color: iconColor,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          title!,
          style: TextStyle(color: color),
        ),
      ]),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigationBar(
              backgroundcolor: Colors.black87,
              color: Colors.white70,
              iconColor: Colors.grey,
              title: "Add to wish list",
              iconData: Icons.favorite_outline),
          bottomNavigationBar(
            backgroundcolor: Color(0xffd1ad17),
            color: Colors.black87,
            iconColor: Colors.white,
            title: "Go to Cart",
            iconData: Icons.shop_outlined,
          ),
        ],
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color(0xffd1ad17),
        iconTheme: IconThemeData(color: Color(0xffd1ad17)),
        title: Text(
          "Product Overview",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(widget.productName??""),
                      subtitle: Text("50\$"),
                    ),
                    Container(
                      padding: EdgeInsets.all(40),
                      height: 250,
                      child: Image.asset(widget.productImage??""),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      child: Text(
                        "Available option",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.green[700],
                              ),
                              Radio(
                                value: SinginCharacter.fill,
                                groupValue: _character,
                                activeColor: Colors.grey[700],
                                onChanged: (value) {
                                  setState(() {
                                    // _character =value;
                                  });
                                },
                              )
                            ],
                          ),
                          Text("\$${widget.productPrice}"),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 17,
                                  color: Color(0xffd1ad17),
                                ),
                                Text(
                                  "ADD",
                                  style: TextStyle(color: Color(0xffd1ad17)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About this Product",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Avout this Product dsjfdjfjdf sdfjdf asdfsadbjlf sdfasdf sadfjbasdf sadfjasbdf asdfjasdbf asdfasdf asdlfasdf  dfjbadksf asdkfbkasdf adkfhaierf aduadf vdadf asdfaf f",
                  style: TextStyle(fontSize: 15, color: Colors.black87),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
