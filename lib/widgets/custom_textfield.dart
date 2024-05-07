import 'package:flutter/material.dart';
import 'package:flutterfolio/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
       this.controller,
       this.maxLines = 1,
       this.hintText,
      });

  final TextEditingController? controller;
  final int? maxLines;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: const TextStyle(
        color: CustomColor.scaffoldBg,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15),
        filled: true,
        fillColor: CustomColor.whiteSecondary,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: CustomColor.hintDark,
        ),
      ),
    );
  }
}
