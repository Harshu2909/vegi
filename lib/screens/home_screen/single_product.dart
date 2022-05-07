import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  // final String productImage;
  //  final String productName;
  //  final Function onTap;
  // SingleProduct({required this.productImage, required this.productName, required this.onTap});

  // const SingleProduct(
  //     {Key? key, this.productImage, this.productName, this.onTap})
  //     : super(key: key);

  Widget singleProduct() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 228, 231, 228),
          borderRadius: BorderRadius.circular(15)),
      child: Column(children: [
        Expanded(
            flex: 2,
            child: Image(
                fit: BoxFit.cover, image: AssetImage("assets/vegetable1.jpg"))),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Fresh basil",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              '\$50\/50 Grams',
              style: TextStyle(fontSize: 10),
            ),

            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      // color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                )),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(8)),
                )),
              ],
            )
            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //           width: 140,
            //           height: 20,
            //           child: OutlinedButton(
            //             child: Row(
            //               children: [
            //                 Expanded(
            //                   flex: 2,
            //                   child: Text(
            //                     "50 Grams",
            //                     style: TextStyle(color: Color(0xffd6b738),
            //                     ),
            //                   ),
            //                 ),
            //                 Expanded(
            //                   child: Icon(
            //                     Icons.arrow_drop_down,
            //                     color: Color(0xffd6b738),
            //                   ),
            //                 )
            //               ],
            //             ),
            //             onPressed: () {},
            //           )),
            //     ),
            //       Expanded(
            //         child: Container(
            //           width: 140,
            //           height: 20,
            //           child: OutlinedButton(
            //             child: Row(
            //               children: [
            //                 Text(
            //                   "50 Grams",
            //                   style: TextStyle(color: Color(0xffd6b738),
            //                   ),
            //                 ),
            //                 Icon(
            //                   Icons.arrow_drop_down,
            //                   color: Color(0xffd6b738),
            //                 )
            //               ],
            //             ),
            //             onPressed: () {},
            //           )),
            //       ),
            //   ],
            // )
          ],
        ))
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return singleProduct();
  }
}
