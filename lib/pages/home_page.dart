import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterfolio/constants/colors.dart';
import 'package:flutterfolio/constants/nav_items.dart';
import 'package:flutterfolio/constants/size.dart';
import 'package:flutterfolio/constants/skill_items.dart';
import 'package:flutterfolio/styles/style.dart';
import 'package:flutterfolio/utils/project_utils.dart';
import 'package:flutterfolio/widgets/Project_card.dart';
import 'package:flutterfolio/widgets/contacts.dart';
import 'package:flutterfolio/widgets/custom_textfield.dart';
import 'package:flutterfolio/widgets/drawer_mobile.dart';
import 'package:flutterfolio/widgets/footer_section.dart';
import 'package:flutterfolio/widgets/header_desktop.dart';
import 'package:flutterfolio/widgets/header_mobile.dart';
import 'package:flutterfolio/widgets/main_desktop.dart';
import 'package:flutterfolio/widgets/main_mobile.dart';
import 'package:flutterfolio/widgets/projects.dart';
import 'package:flutterfolio/widgets/skill_desktop.dart';
import 'package:flutterfolio/widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey(),);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer:
            constraints.maxWidth >= kMinDesktopWidth ? null : DrawerMobile(onNavItemTap: (int navIndex){
              // call function
              scaffoldKey.currentState?.closeEndDrawer();
              scrollToSection(navIndex);
            },),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(key: navbarKeys.first),
              // Main
              if (constraints.maxWidth >= kMinDesktopWidth)
                HeaderDesktop(onNavMenuTap: (int navIndex) {
                  // call function
                  scrollToSection(navIndex);
                },)
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
          
              if (constraints.maxWidth >= kMinDesktopWidth)
                const MainDesktop()
              else
                const MainMobile(),
          
              // Skills
              Container(
                key: navbarKeys[1],
                width: screenWidth,
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //title
                    const Text(
                      "What I can Do",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
          
                    SizedBox(height: 50),
          
                    // platfroms and skills
          
                    if (constraints.maxWidth >= kMedDesktopWidth)
                      const SkillsDesktop()
                    else
                      SkillsMobile(),
                  ],
                ),
              ),
              SizedBox(height: 30),
          
              // Projects
              Projects(key: navbarKeys[2]),
          
              SizedBox(height: 30),
          
              //Contacts
              Contacts(key: navbarKeys[3]),
          
              SizedBox(height: 30,),
              // footer
              Footer(),
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut,);
  }

}
