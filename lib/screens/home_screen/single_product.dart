import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String productImage;
   final String productName;
  //  final Function onTap;
  SingleProduct({required this.productImage, required this.productName, });

  

  Widget singleProduct() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 230,
      width: 170,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 228, 231, 228),
          borderRadius: BorderRadius.circular(15)),
      child: Column(children: [
        Expanded(
            flex: 2,
            child: Image(
                 fit: BoxFit.cover, 
                image: AssetImage(productImage))),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              productName,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              '\$50\/50 Grams',
              style: TextStyle(fontSize: 10),
            ),

            Padding(
              padding: const EdgeInsets.only(left:8.0,right: 8),
              child: Row(
                
                children: [
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 4),
                    height: 25,
                    width: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        // color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Expanded(child: Text("50 gram",style: TextStyle(fontSize: 10),)),
                            Center(child: Icon(Icons.arrow_drop_down,size: 20,color: Color(0xffd1ad17),),)
                          ],
                        ),
                  )),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Container(
                    height: 25,
                    width: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        // color: Colors.amber,
                        borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Icon(Icons.remove,size: 20,color: Color(0xffd1ad17)),
                          Text("1",style: TextStyle(fontSize: 10),),
                          Icon(Icons.add,size: 20,color: Color(0xffd1ad17),)
                        ]),
                        
                  )),
                ],
              ),
            )
           
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
