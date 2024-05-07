import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfolio/constants/colors.dart';
import 'package:flutterfolio/constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: Column(
        children: [
          for (int i = 0; i < platformItems.length; i++)
            //platfrom
            Container(
              margin: EdgeInsets.only(bottom: 5),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: CustomColor.bgLight2,
                  borderRadius: BorderRadius.circular(5)),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 15,
                ),
                leading: Image.asset(
                  platformItems[i]["img"],
                  width: 40,
                ),
                title: Text(platformItems[i]["title"]),
              ),
            ),
          SizedBox(height: 50),
      
          //skills
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillItems.length; i++)
                Chip(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0,
                  ),
                  backgroundColor: CustomColor.bgLight2,
                  label: Text(skillItems[i]["title"]),
                  avatar: Image.asset(skillItems[i]["img"]),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
