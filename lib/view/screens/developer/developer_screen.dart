import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/icons.dart';
import 'package:bro_s_journey/view/screens/developer/widgets/home_header_widget.dart';
import 'package:bro_s_journey/view/screens/developer/widgets/list_item_widget.dart';
import 'package:bro_s_journey/view/screens/language/language_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DeveloperScreen extends StatefulWidget {
  const DeveloperScreen({super.key});

  @override
  State<DeveloperScreen> createState() => _DeveloperScreenState();
}

class _DeveloperScreenState extends State<DeveloperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Skeletonizer(
            enabled: false,
            enableSwitchAnimation: true,
            effect: PulseEffect(
              from: Colors.grey.shade50,
              to: Colors.grey.shade100,
              duration: const Duration(seconds: 1),
            ),
            child: Column(
              children: [
                const HomeHeaderWidget(),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Skeleton.shade(
                    child: Column(
                      children: [
                        buildProfileOptionRow(
                          'Notification',
                          CustomIcons.notification,
                        ),
                        const SizedBox(height: 15),
                        buildProfileOptionRow(
                          'Appearance',
                          CustomIcons.clipboard,
                        ),
                        const SizedBox(height: 15),
                        buildProfileOptionRow(
                          'Language',
                          CustomIcons.language,
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                  duration: Duration(milliseconds: 800),
                                  isIos: true,
                                  child: LanguageScreen(),
                                  type: PageTransitionType.rightToLeft),
                            );
                          },
                        ),
                        const SizedBox(height: 15),
                        buildProfileOptionRow(
                          'Terms & Condition',
                          CustomIcons.note,
                        ),
                        const SizedBox(height: 15),
                        buildProfileOptionRow(
                          'Help Center',
                          CustomIcons.directboxsend,
                        ),
                        const SizedBox(height: 15),
                        buildProfileOptionRow(
                          'About Us',
                          CustomIcons.aboutUs,
                        ),
                        const SizedBox(height: 15),
                        buildProfileOptionRow(
                          'Share The App',
                          null,
                          showRightArrow: false,
                        ),
                        const SizedBox(height: 15),
                        buildProfileOptionRow(
                          'Write a Review',
                          null,
                          showRightArrow: false,
                        ),
                        const SizedBox(height: 15),
                        buildProfileOptionRow(
                          'Logout',
                          null,
                          showRightArrow: false,
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
