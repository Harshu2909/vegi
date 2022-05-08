import 'package:flutter/material.dart';
import 'package:vegi/widgets/single_item.dart';

class ReviewCart extends StatelessWidget {
  const ReviewCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(title: Text("Total amount"),
      subtitle: Text("170.0\$",
      style: TextStyle(color: Colors.green[900]),),
      trailing: Container(
        width: 160,
        child: MaterialButton(
          child: Text("Submit"),
          color: Color(0xffd1ad17),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          onPressed: (){},
          ),
        ),
      ),
      
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Review cart",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10,),



          SingleItem(isBool: true),
          SingleItem(isBool: true),
          SingleItem(isBool: true),
          SingleItem(isBool: true),
           SizedBox(height: 10,),
        ],
      ),
    );
  }
}
