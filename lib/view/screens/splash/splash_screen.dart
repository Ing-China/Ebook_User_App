import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/dimension.dart';
import 'package:bro_s_journey/utils/images.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: SizedBox(
          width: Dimension.screenWidthPercentage(context, 0.8),
          height: Dimension.screenHeightPercentage(context, 0.5),
          child: Image.asset(
            CustomImages.logoPng,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
