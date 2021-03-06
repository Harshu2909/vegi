import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vegi/auth/sign_in.dart';
import 'package:vegi/check_out/add_delivery_address/add_delivery_address.dart';
import 'package:vegi/check_out/delivery_detail/delivery_detail.dart';
import 'package:vegi/check_out/payment_summary/payment_summary.dart';
import 'package:vegi/providers/product_provider.dart';
import 'package:vegi/screens/home_screen/home_screen.dart';
import 'package:vegi/screens/my%20profile/my_profile.dart';
import 'package:vegi/screens/product_overview/product_overview.dart';
import 'package:vegi/screens/review_cart/review_cart.dart';
import 'package:vegi/screens/search/search.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProductProvider>(
      create: (context) =>ProductProvider() ,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.amber,
        ),
        home:  HomeScreen()
      ),
    );
  }
}

