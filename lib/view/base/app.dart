import 'package:bro_s_journey/controllers/home_controller.dart';
import 'package:bro_s_journey/providers/language_provider.dart';
import 'package:bro_s_journey/providers/theme_provider.dart';
import 'package:bro_s_journey/view/base/bottom_navigation/bottom_navigation.dart';
import 'package:bro_s_journey/view/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:bro_s_journey/l10n/l10n.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LanguageProvider()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => HomeController()),
      ],
      builder: (context, child) {
        final provider = Provider.of<LanguageProvider>(context);
        final themeProvider = Provider.of<ThemeProvider>(context);

        SystemUiOverlayStyle overlayStyle = themeProvider.isDarkTheme
            ? SystemUiOverlayStyle.light
            : SystemUiOverlayStyle.dark;

        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: overlayStyle,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            supportedLocales: L10n.all,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            locale: provider.locale,
            theme: themeProvider.currentTheme,
            home: const SplashScreenWrapper(),
          ),
        );
      },
    );
  }
}

class SplashScreenWrapper extends StatefulWidget {
  const SplashScreenWrapper({super.key});

  @override
  _SplashScreenWrapperState createState() => _SplashScreenWrapperState();
}

class _SplashScreenWrapperState extends State<SplashScreenWrapper> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const BottomNavigation()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
