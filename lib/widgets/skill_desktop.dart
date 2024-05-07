import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfolio/constants/colors.dart';
import 'package:flutterfolio/constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < platformItems.length; i++)
                        // platforms
                        ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 400,
                          ),
                          child: Wrap(
                            spacing: 20.0,
                            runSpacing: 10.0,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 200,
                                decoration: BoxDecoration(
                                  color: CustomColor.bgLight2,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ListTile(
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 10,
                                  ),
                                  leading: Image.asset(
                                    platformItems[i]["img"],
                                    width: 40,
                                  ),
                                  title: Text(platformItems[i]["title"]),
                                ),
                              ),
                            ],
                          ),
                        ),

                      SizedBox(width: 50),

                      //skills
                      Flexible(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 500,
                          ),
                          child: Wrap(
                            spacing: 10.0,
                            runSpacing: 10.0,
                            children: [
                              for (int i = 0; i < skillItems.length; i++)
                                Chip(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15.0, 
                                      horizontal: 15.0,
                                      ),
                                      backgroundColor: CustomColor.bgLight2,
                                  label: Text(skillItems[i]["title"]),
                                  avatar: Image.asset(skillItems[i]["img"], height: 15,),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
  }
}