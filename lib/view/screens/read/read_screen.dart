import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/icons.dart';
import 'package:bro_s_journey/view/screens/read/widgets/page_input_dialog.dart';
import 'package:bro_s_journey/view/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReadScreen extends StatefulWidget {
  final String pdfPath;
  final String name;
  const ReadScreen({
    super.key,
    required this.pdfPath,
    required this.name,
  });

  @override
  State<ReadScreen> createState() => _ReadScreenState();
}

class _ReadScreenState extends State<ReadScreen> {
  late PDFViewController _pdfViewController;
  final TextEditingController _pageController = TextEditingController();

  void _showPageDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return PageInputDialog(
          pageController: _pageController,
          onOk: () async {
            final pageNumber = int.tryParse(_pageController.text);
            if (pageNumber != null) {
              final totalPages = await _pdfViewController.getPageCount();
              if (pageNumber > totalPages!) {
                _pdfViewController.setPage(totalPages - 1);
              } else if (pageNumber > 0) {
                _pdfViewController.setPage(pageNumber - 1);
              }
            }
          },
          onClose: () {
            // Handle any additional close actions if needed
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(
        title: widget.name,
        showBookMarkButton: true,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: PDF(
              swipeHorizontal: true,
              onViewCreated: (PDFViewController pdfViewController) {
                _pdfViewController = pdfViewController;
              },
            ).cachedFromUrl(
              widget.pdfPath,
              placeholder: (progress) => Center(child: Text('$progress %')),
              errorWidget: (error) => Center(child: Text(error.toString())),
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: GestureDetector(
              onTap: _showPageDialog,
              child: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    CustomIcons.search,
                    color: AppColors.whiteColor,
                    width: 15,
                    height: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
