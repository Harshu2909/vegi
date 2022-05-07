import 'package:flutter/material.dart';
import 'package:vegi/screens/home_screen/drawer_sidee.dart';

class MyProfile extends StatelessWidget {

  Widget listTile(IconData icon, String title){
    return Column(
      children: [
        Divider(height: 1,),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        )
      ],
    );
  }
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd1ad17),
      appBar: AppBar(
        backgroundColor: Color(0xffd1ad17),
        elevation: 0.0,
        title: Text(
          "My Profile",
          style: TextStyle(fontSize: 18, color: Colors.black87),
        ),
      ),
      drawer: DrawerSidee(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: Color(0xffd1ad17),
              ),
              Container(
                height: 625,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    color: Color(0xffcbcbcb),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 250,
                          height: 80,
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Harshad",
                                  style: TextStyle(fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),),
                                  SizedBox(height: 10,),
                                  Text("harshad@vegi.com")

                                ],
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Color(0xffd1ad17),
                                child: CircleAvatar(
                                  radius: 12,
                                  child: Icon(Icons.edit,
                                  color: Color(0xffd1ad17)),
                                  backgroundColor: Color(0xffcbcbcb),
                                  
                                ),
                              )
                        
                            ],
                          ),
                        ),
                      ],
                    ),
                    listTile(Icons.shop_outlined, "My orders"),
                    listTile(Icons.location_on_outlined, "My Delivery Address"),
                    listTile(Icons.person_outlined, "Refer a friend"),
                    listTile(Icons.file_copy_outlined,"Terms & Condition"),
                    listTile(Icons.policy_outlined, "Privacy"),
                    listTile(Icons.addchart_outlined, "About"),
                    listTile(Icons.exit_to_app_outlined,"Log out"),
                    
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 30),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xffd1ad17),
              child: CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage("assets/vegetable1.jpg"),
                backgroundColor: Color(0xffcbcbcb),
              ),
            ),
          )
        ],
      ),
    );
  }
}
