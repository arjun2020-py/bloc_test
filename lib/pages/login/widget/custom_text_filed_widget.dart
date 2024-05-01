import 'package:flutter/material.dart';

class CustomTexfiledWidget extends StatelessWidget {
  const CustomTexfiledWidget({super.key, required this.hintText,required this.controller,required this.validator});
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white12,
          hintText: hintText,
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
