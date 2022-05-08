// import 'dart:html';

import 'package:flutter/material.dart';

class SingleDeliveryItem extends StatelessWidget {

  final  title;
    final  address;
    final  number;
    final  addressType;
    SingleDeliveryItem({this.title,this.address,this.number,this.addressType});
  // ?const SingleDeliveryItem(Set set, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        ListTile (
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Container(
        
                width: 60,
                padding:EdgeInsets.all(1),
                height: 20,
                decoration: BoxDecoration(
                  color: Color(0xffd1ad17),
                  borderRadius: BorderRadius.circular(10),
              
                ),
                child: Center(child: Text(addressType,style: TextStyle(fontSize: 13,color: Colors.black),),),
              ),
            ],
          ),
          leading: CircleAvatar(backgroundColor: Color(0xffd1ad17),
          radius: 8,),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(address),
                SizedBox(height: 5,),
                Text(number)
            ],
          ),
        ),
        Divider(height: 35,)
      ],
    );
  }
}