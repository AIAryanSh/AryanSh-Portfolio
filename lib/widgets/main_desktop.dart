import 'package:flutter/material.dart';
import 'package:flutterfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi, \nI'm AryanSh \nA Flutter Developer",
                style: TextStyle(
                    height: 1.5,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 250,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor
                        .yellowSecondary, // Use your custom color here
                  ),
                  child: Text("Get In Touch",
                      style: TextStyle(
                        color: CustomColor.whitePrimary,
                      )),
                ),
              ),
            ],
          ),
          Image.asset(
            "assets/pixelcut-export (2).png",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
