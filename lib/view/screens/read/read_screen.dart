import 'package:bro_s_journey/helpers/theme_helper.dart';
import 'package:bro_s_journey/utils/icons.dart';
import 'package:bro_s_journey/view/screens/read/widgets/page_input_dialog.dart';
import 'package:bro_s_journey/view/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

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
  final TextEditingController _pageController = TextEditingController();
  late PdfViewerController _pdfViewerController;

  @override
  void initState() {
    super.initState();
    _pdfViewerController = PdfViewerController();
  }

  void _openPageDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return PageInputDialog(
          pageController: _pageController,
          onOk: () {
            final pageNumber = int.tryParse(_pageController.text);
            if (pageNumber != null) {
              _pdfViewerController.jumpToPage(pageNumber);
            }
          },
          onClose: () {
            _pageController.clear();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeHelper.getPrimaryColor(context),
      appBar: CustomAppBar(
        title: widget.name,
        showBookMarkButton: true,
      ),
      body: SfPdfViewerTheme(
        data: SfPdfViewerThemeData(
          backgroundColor: ThemeHelper.getPrimaryColor(context),
          progressBarColor: Colors.grey,
        ),
        child: Stack(
          children: [
            SfPdfViewer.network(
              widget.pdfPath,
              pageSpacing: 10,
              canShowPageLoadingIndicator: true,
              canShowScrollHead: false,
              scrollDirection: PdfScrollDirection.horizontal,
              pageLayoutMode: PdfPageLayoutMode.single,
              controller: _pdfViewerController,
            ),
            Positioned(
              top: 20,
              right: 20,
              child: GestureDetector(
                onTap: _openPageDialog,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: ThemeHelper.getCanvasColor(context),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      CustomIcons.search,
                      color: ThemeHelper.getPrimaryColor(context),
                      width: 15,
                      height: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
