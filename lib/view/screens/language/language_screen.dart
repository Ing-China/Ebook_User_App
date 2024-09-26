import 'package:bro_s_journey/controllers/language_controller.dart';
import 'package:bro_s_journey/providers/language_provider.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/images.dart';
import 'package:bro_s_journey/view/screens/language/widgets/language_button_widget.dart';
import 'package:bro_s_journey/view/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  late LanguageController languageController;

  @override
  void initState() {
    super.initState();
    final languageProvider =
        Provider.of<LanguageProvider>(context, listen: false);
    languageController = LanguageController(languageProvider);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.language,
        showBookMarkButton: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            ButtonLanguage(
              language: 'ភាសាខ្មែរ',
              imageAsset: CustomImages.cambodia,
              isSelected: languageController.selectedLanguage == 'km',
              onTap: () {
                setState(() {
                  languageController.changeLanguage(context, 'km');
                });
              },
            ),
            const SizedBox(height: 15),
            ButtonLanguage(
              language: 'English',
              imageAsset: CustomImages.unitedKingdom,
              isSelected: languageController.selectedLanguage == 'en',
              onTap: () {
                setState(() {
                  languageController.changeLanguage(context, 'en');
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
