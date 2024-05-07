import 'package:flutter/cupertino.dart';
import 'package:flutterfolio/constants/colors.dart';
import 'package:flutterfolio/utils/project_utils.dart';
import 'package:flutterfolio/widgets/Project_card.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              width: screenWidth,
              child: Column(
                children: [
                  // Profession Title
                  const Text(
                    "Professional Projects",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                  const SizedBox(height: 50),
                  //Professional Card
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 900),
                    child: Wrap( 
                      spacing: 25,
                      runSpacing: 25,
                      children: [
                        for(int i = 0; i < professionalProjects.length; i++)
                        ProjectCardWidget(
                          project: professionalProjects[i],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 80),
                  // Profession Title
                  const Text(
                    "Personal Projects",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                  const SizedBox(height: 50),

                  //Personal Project Card
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 900),
                    child: Wrap(
                      spacing: 25,
                      runSpacing: 25,
                      children: [
                        for(int i = 0; i < personalProjects.length; i++)
                        ProjectCardWidget(
                          project: personalProjects[i],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            );
  }
}