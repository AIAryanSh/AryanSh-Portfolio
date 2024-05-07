import 'package:flutter/material.dart';
import 'package:flutterfolio/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              width: double.maxFinite,
              alignment: Alignment.center,
              child: Text(
                "Made by AryanSh with Flutter",
                style: TextStyle(
                  fontSize: 16,
                  color: CustomColor.whiteSecondary,
                  fontWeight: FontWeight.w300
                ),
                ),
            );
  }
}