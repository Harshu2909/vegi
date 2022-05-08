// import 'dart:html';

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:vegi/check_out/payment_summary/order_item.dart';

class PaymentSummary extends StatefulWidget {

  
  
  PaymentSummary({Key? key}) : super(key: key);

  @override
  State<PaymentSummary> createState() => _PaymentSummaryState();
}

enum AddressTypes{
  COD,
  OnlinePayment,
  
}

class _PaymentSummaryState extends State<PaymentSummary> {
  var myType= AddressTypes.COD;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Payment Summary",
          style: TextStyle(fontSize: 18),
        ),
      ),
      bottomNavigationBar: ListTile(
        title: Text("Total Amount"),
        subtitle: Text(
          "200\$",
          style: TextStyle(
              color: Colors.green[900],
              fontWeight: FontWeight.bold,
              fontSize: 17),
        ),
        trailing: Container(
          width: 160,
          child: MaterialButton(
            color: Color(0xffd1ad17),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Text(
              "Place Order",
              style: TextStyle(color: Colors.black87),
            ),
            onPressed: () {},
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text("First & Last name"),
                      subtitle: Text(
                          "Area Kshama India/Gujarat Surat pincode 648913"),
                    ),
                    Divider(),
                    ExpansionTile(children: [
                      OrderItem(),
                      OrderItem(),
                      OrderItem(),
                      OrderItem(),
                      OrderItem(),
                      OrderItem(),
                    ], title: Text("Order item 6")),
                    Divider(),
                    ListTile(
                      minVerticalPadding: 5,
                      leading: Text(
                        "Sub Total",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        "200\$",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ), 
                    ),  
                    ListTile(
                      minVerticalPadding: 5,
                      leading: Text(
                        "Shipping Charge",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      trailing: Text(
                        "0\$",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ), 
                    ),
                    ListTile(
                      minVerticalPadding: 5,
                      leading: Text(
                        "Coupan Discount",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      trailing: Text(
                        "50\$",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ), 
                    ),
                    Divider(),
                    ListTile(
                      leading: Text("'Payment Option"),
                      
                    ),
                    RadioListTile(
                      title: Text("COD"),
                      secondary: Icon(Icons.money,color: Color(0xffd1ad17),),
                      value: AddressTypes.COD, 
                      groupValue: myType, 
                      onChanged: (onChanged){}),
                      RadioListTile(
                      title: Text("Onine Payment"),
                      secondary: Icon(Icons.payment,color: Color(0xffd1ad17),),
                      value: AddressTypes.OnlinePayment, 
                      groupValue: myType, 
                      onChanged: (onChanged){}),
                  ],
                );
              })),
    );
  }
}
