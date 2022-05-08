import 'package:flutter/material.dart';

class CoustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labText;
  // final TextInputType? keyboardType;

  // const CoustomTextField({Key? key}) : super(key: key);
  CoustomTextField({this.controller,  this.labText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      // keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        labelText: labText,
      ),
    );
  }
}
