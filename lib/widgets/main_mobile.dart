import 'package:flutter/material.dart';
import 'package:flutterfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [
                  CustomColor.scaffoldBg.withOpacity(0.6),
                  CustomColor.scaffoldBg.withOpacity(0.6),
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/pixelcut-export (2).png",
              width: screenHeight,
            ),
          ),

          SizedBox(
            height: 30,
          ),

          //intro text
          Text(
            "Hi, \nI'm AryanSh \nA Flutter Developer",
            style: TextStyle(
                height: 1.5,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 190,
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    CustomColor.yellowSecondary, // Use your custom color here
              ),
              child: Text("Get In Touch",
                  style: TextStyle(
                    color: CustomColor.whitePrimary,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
