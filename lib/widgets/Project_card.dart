import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfolio/constants/colors.dart';
import 'package:flutterfolio/utils/project_utils.dart';
import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.project,
  });

  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 300,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRect(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Align(
              alignment: Alignment
                  .topCenter, // Align the image to the top
              child: Image.asset(
                project.image,
                height: 160,
                width: 280,
                fit: BoxFit.cover,
              ),
            ),
          ),
    
          // Title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
            child: Text(
              project.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
    
          // Subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
          // footer
          Container(
            height: 35,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            color: CustomColor.bgLight1,
            child: Row(
              children: [
                Text(
                  "Available on:",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 10,
                  ),
                ),
                const Spacer(),
                if(project.AndroidLink != null)
                InkWell(
                  onTap: () {
                     js.context.callMethod("open",[project.AndroidLink]);
                  },
                  child: Image.asset(
                    "assets/Android Logo.png",
                    height:15,
                    width: 17,
                  ),
                ),
                if(project.iosLink != null)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: InkWell(
                    onTap: () {
                      js.context.callMethod("open",[project.iosLink]);
                    },
                    child: Image.asset(
                      "assets/apple logo.png",
                      width: 17,
                    ),
                  ),
                ),
                if(project.gitHubLink != null)
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: InkWell(
                    onTap: () {
                      js.context.callMethod("open",[project.gitHubLink]);
                    },
                    child: Image.asset(
                      "assets/icons8-github-30.png",
                      height: 15,
                      width: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
