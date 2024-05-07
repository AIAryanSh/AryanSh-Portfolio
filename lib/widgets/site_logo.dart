import 'package:flutter/material.dart';
import 'package:flutterfolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset("assets/icons8-a-100.png")
      //const Text(
      //   "A",
      //   style: TextStyle(
      //     color: CustomColor.yellowSecondary,
      //     fontSize: 22,
      //     fontWeight: FontWeight.bold,
      //     decoration: TextDecoration.underline,
      //   ),
      //),
    );
  }
}
