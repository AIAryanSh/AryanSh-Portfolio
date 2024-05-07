// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterfolio/constants/colors.dart';
import 'package:flutterfolio/constants/nav_items.dart';
import 'package:flutterfolio/styles/style.dart';
import 'package:flutterfolio/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavMenuTap});
  final Function (int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 60,
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20,
            ),
            width: double.maxFinite,
            decoration: kHeaderDecoration,
            child: Row(
              children: [
                SiteLogo(onTap : () {}),
                Spacer(),
                for (int i = 0; i < navTiles.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextButton(
                      onPressed: () {
                        onNavMenuTap(i);
                      },
                      child: Text(navTiles[i],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: CustomColor.whitePrimary,
                      ),
                      ),
                    ),
                  ),
              ],
            ),
          );
  }
}