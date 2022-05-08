import 'package:flutter/material.dart';
import 'package:vegi/check_out/delivery_detail/single_delivery_item.dart';
import 'package:vegi/screens/home_screen/single_product.dart';

class DeliveryDetails extends StatelessWidget {
  const DeliveryDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Deivery Detail"),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffd1ad17),
          child: Icon(Icons.add),
          onPressed: () {}),
      bottomNavigationBar: Container(
        // width: 160,
        height: 48,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Text("Add New Address"),
            color: Color(0xffd1ad17),
            onPressed: () {}),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Deliver to"),
            leading:Icon(Icons.location_on_outlined)
            
          ),
          Divider(
            height: 1,

          ),
          Column(
            children: [
              SingleDeliveryItem(
                address: "area, India/Gujarat, Surat, Street, 20, Society, pincodee 635214",
                title: " Harshad Developer",
                addressType: "Work",
                number: "7203039797",
              )
            ],
          )
        ],
      ),
    );
  }
}
