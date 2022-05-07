import 'package:flutter/material.dart';
import 'package:vegi/screens/search/search_item.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        actions: [
          Padding(padding: EdgeInsets.all(8),
          child: Icon(Icons.menu_outlined),)
        ],
        
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Items"),
            
        
          ),
          Container(
            height: 52,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                borderSide:BorderSide.none),
                fillColor: Color(0xffc2c2c2),
                filled: true,
                hintText: "Search For item in the store",
                suffixIcon: Icon(Icons.search)
              ),
            ),
          ),
          SizedBox(height: 10,),
          SearchItem(),
          SearchItem(),
          SearchItem(),
          SearchItem(),
          SearchItem(),
          SearchItem(),
          SearchItem(),
        ],
      ),
    );
  }
}