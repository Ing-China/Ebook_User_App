import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/dimension.dart';
import 'package:flutter/material.dart';

class PageInputDialog extends StatelessWidget {
  final TextEditingController pageController;
  final VoidCallback onOk;
  final VoidCallback onClose;

  PageInputDialog({
    required this.pageController,
    required this.onOk,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      backgroundColor: AppColors.whiteColor,
      content: Container(
        padding: const EdgeInsets.all(15),
        width: Dimension.screenWidthPercentage(context, 1),
        height: Dimension.screenHeightPercentage(context, 0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Go to page',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: TextField(
                controller: pageController,
                keyboardType: TextInputType.number,
                cursorColor: AppColors.primaryColor,
                decoration: const InputDecoration(
                  hintText: 'Enter page number',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.primaryColor,
                      width: 1.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.primaryColor,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    onClose();
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Close',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.red,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    onOk();
                    Navigator.of(context).pop();
                    pageController.clear();
                  },
                  child: const Text(
                    'Okay',
                    style: TextStyle(
                      fontSize: 17,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
