import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vegi/screens/my%20profile/my_profile.dart';
import 'package:vegi/screens/review_cart/review_cart.dart';

class DrawerSidee extends StatelessWidget {
  const DrawerSidee({Key? key,   child}) : super(key: key);


  Widget listTile({IconData? icon, String? title, Function? onTap}) {
    return ListTile(
    
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title!,
        style: TextStyle(color: Colors.black45),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: Color(0xffd1ad17),
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white54,
                      radius: 44,
                      child:
                          CircleAvatar(radius: 40, backgroundColor: Colors.red),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Welcome Guest"),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 30,
                          child: OutlineButton(
                              onPressed: () {},
                              child: Text("Login"),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(11),
                                  side: BorderSide(width: 2))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              listTile(icon: Icons.home_outlined, title: "Home"),
              listTile(
               
                icon: Icons.shop_outlined, title: "Review Cart",  onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ReviewCart()));
                },),
              listTile(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyProfile()));
                },
                icon: Icons.person_outline, title: "My Profile"),
              listTile(
                  icon: Icons.notifications_outlined, title: "Notification"),
              listTile(icon: Icons.star_outlined, title: "Rating & Review"),
              listTile(icon: Icons.favorite_outlined, title: "Wishlist"),
              listTile(icon: Icons.copy_outlined, title: "Raise a Complaint"),
              listTile(icon: Icons.format_quote_outlined, title: "FAQs"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Contact Support"),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text("Call Us : "),
                          SizedBox(
                            width: 10,
                          ),
                          Text("7203039797"),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("Mail Us : "),
                          SizedBox(
                            width: 10,
                          ),
                          Text("support@vegi.com"),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
  }
}