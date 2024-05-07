import 'package:flutter/material.dart';
import 'package:flutterfolio/constants/colors.dart';
import 'package:flutterfolio/constants/size.dart';
import 'package:flutterfolio/constants/sns_links.dart';
import 'package:flutterfolio/widgets/custom_textfield.dart';
import 'dart:js' as js;

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        25,
        20,
        25,
        60,
      ),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          // Title
          Text(
            "Get in Touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),

          SizedBox(
            height: 50,
          ),

          ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 700, maxHeight: 100),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth >= kMinDesktopWidth) {
                    return buildnameEmailFieldDesktop();
                  } else
                    return buildnameEmailFieldMobile();
                },
              )),
          SizedBox(
            height: 15,
          ),
          //message
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: CustomTextField(
              hintText: "Your Message",
              maxLines: 15,
            ),
          ),

          SizedBox(height: 15),
          // Send Button
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: SizedBox(
              height: 40,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Get in Touch",
                    style: TextStyle(
                      color: CustomColor.whitePrimary,
                    )),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      CustomColor.yellowSecondary, // Use your custom color here
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 300),
              child: const Divider()),

          SizedBox(height: 15),
          // SNS icon Button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.github]);
                },
                child: Image.asset(
                  "assets/icons8-github-30.png",
                  width: 28,
                ),
              ),
              InkWell(
                  onTap: () {
                    js.context.callMethod('open', [SnsLinks.linkedIn]);
                  },
                  child:
                      Image.asset("assets/icons8-linkedin-48.png", width: 28)),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.X]);
                },
                child: Image.asset(
                  "assets/icons8-twitterx-48.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.instagram]);
                },
                child: Image.asset(
                  "assets/icons8-instagram-logo-48.png",
                  width: 28,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildnameEmailFieldDesktop() {
    return Row(
      children: [
        //name
        Flexible(
          child: CustomTextField(hintText: "Your Name"),
        ),
        SizedBox(width: 15),
        //email
        Flexible(
          child: CustomTextField(hintText: "Your email"),
        ),
      ],
    );
  }

  Column buildnameEmailFieldMobile() {
    return Column(
      children: [
        //name
        Flexible(
          child: CustomTextField(hintText: "Your Name"),
        ),
        SizedBox(height: 15),
        //email
        Flexible(
          child: CustomTextField(hintText: "Your email"),
        ),
      ],
    );
  }
}
