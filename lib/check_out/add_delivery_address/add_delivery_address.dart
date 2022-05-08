import 'package:flutter/material.dart';
import 'package:vegi/widgets/coustom_text_field.dart';

class AddDeliveryAddress extends StatefulWidget {
  // AddDeliveryAddress({Key? key}) : super(key: key);

  @override
  State<AddDeliveryAddress> createState() => _AddDeliveryAddressState();
}

enum AddressTypes{
  Home,
  Work,
  Other,
}
class _AddDeliveryAddressState extends State<AddDeliveryAddress> {
  var myType=AddressTypes.Home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Delivery Address",style: TextStyle(fontSize: 18),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        // width: 160,
        height: 48,
        child: MaterialButton(
            child: Text(
              "Add Address",
              style: TextStyle(color: Colors.black87,),
            ),
            color: Color(0xffd1ad17),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: () {}),
      ),
      body:
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20 ),
            child: ListView(
              children: [
                CoustomTextField(
                  labText: "First name",
                  
                ),
                CoustomTextField(
                  labText: "Last name",
                  
                ),
                CoustomTextField(
                  labText: "Mobile No.",
                  
                ),
                CoustomTextField(
                  labText: "Alternative Mobile No.",
                  
                ),
                CoustomTextField(
                  labText: "Society",
                  
                ),
                CoustomTextField(
                  labText: "Street",
                  
                ),
                CoustomTextField(
                  labText: "Landmark",
                  
                ),
                CoustomTextField(
                  labText: "City",
                  
                ),
                CoustomTextField(
                  labText: "Area",
                  
                ),
                CoustomTextField(
                  labText: "Pincode",
                  
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 47,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text("Set Location")
                    ],),),
                  ),
                  Divider(
                    color: Colors.black,
                    ),
                    ListTile(
                      title: Text("Address Type*"),
                    ),
                    RadioListTile(
                      title: Text("Home"),
                      secondary: Icon(Icons.home,color: Color(0xffd1ad17),),
                      value: AddressTypes.Home, 
                      groupValue: myType, 
                      onChanged: (onChanged){}),
                      RadioListTile(
                      title: Text("Work"),
                      secondary: Icon(Icons.work,color: Color(0xffd1ad17),),
                      value: AddressTypes.Work, 
                      groupValue: myType, 
                      onChanged: (onChanged){}),
                      RadioListTile(
                      title: Text("Others"),
                      secondary: Icon(Icons.devices_other,color: Color(0xffd1ad17),),
                      value: AddressTypes.Other, 
                      groupValue:myType, 
                      onChanged: (AddressTypes){
                        
                      })

              ],
            ),),


    );
  }
}
