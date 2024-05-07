import 'package:flutter/material.dart';
import 'package:flutterfolio/styles/style.dart';
import 'package:flutterfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 60,
            margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
            decoration: kHeaderDecoration,
            child: Row(
              children: [
                SiteLogo(
                  onTap: onLogoTap,
                ),
                const Spacer(),
                IconButton(
                  onPressed: onMenuTap,
                  icon: Icon(Icons.menu),
                ),
                const SizedBox(width: 15),
              ],
            ),
          );
  }
}