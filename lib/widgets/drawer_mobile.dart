import 'package:flutter/material.dart';
import 'package:flutterfolio/constants/colors.dart';
import 'package:flutterfolio/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key, required this.onNavItemTap});
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: CustomColor.scaffoldBg,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 20,
                  bottom: 20,
                ),
                child: IconButton(onPressed: () {
                  Navigator.of(context).pop();
                }, 
                icon: Icon(Icons.close)),
              ),
            ),
            for (int i = 0; i < navIcons.length; i++)
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                titleTextStyle: TextStyle(
                  color: CustomColor.whitePrimary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
                onTap: () {
                  onNavItemTap(i);
                },
                leading: Icon(navIcons[i]),
                title: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    navTiles[i],
                  ),
                ),
              ),
          ],
        ),
      );
  }
}