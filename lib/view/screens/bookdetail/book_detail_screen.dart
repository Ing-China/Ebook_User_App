import 'package:bro_s_journey/controllers/bookz_detail_controller.dart';
import 'package:bro_s_journey/helpers/theme_helper.dart';
import 'package:bro_s_journey/models/bookz.dart';
import 'package:bro_s_journey/utils/dimension.dart';
import 'package:bro_s_journey/view/screens/bookdetail/widgets/book_detail_widget.dart';
import 'package:bro_s_journey/view/screens/bookdetail/widgets/description_widget.dart';
import 'package:bro_s_journey/view/screens/bookdetail/widgets/image_widget.dart';
import 'package:bro_s_journey/view/screens/read/read_screen.dart';
import 'package:bro_s_journey/view/widgets/app_bar.dart';
import 'package:bro_s_journey/view/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BookDetailScreen extends StatefulWidget {
  final String id;
  final String name;
  const BookDetailScreen({super.key, required this.id, required this.name});

  @override
  State<BookDetailScreen> createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BookzDetailController()..fecthBookById(widget.id),
      child: Scaffold(
        backgroundColor: ThemeHelper.getPrimaryColor(context),
        appBar: CustomAppBar(
          title: widget.name,
          showBookMarkButton: true,
        ),
        body: Consumer<BookzDetailController>(
          builder: (context, controller, _) {
            final book = controller.book ?? Bookz.fakeBookz[0];
            return Skeletonizer(
              enabled: controller.isLoading,
              enableSwitchAnimation: true,
              effect: PulseEffect(
                from: ThemeHelper.getGreyShade50(context),
                to: ThemeHelper.getGreyShade100(context),
                duration: const Duration(seconds: 1),
              ),
              child: Stack(
                children: [
                  Container(
                    height: Dimension.screenHeight(context),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ImageWidget(book: book),
                            BookDetail(book: book),
                            Description(book: book),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (!controller.isLoading) ...[
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      height: 90,
                      child: Container(
                        decoration: BoxDecoration(
                          color: ThemeHelper.getPrimaryColor(context),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: const Offset(0, -1),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 25,
                      left: 20,
                      right: 20,
                      child: PrimaryButton(
                        title: 'Read',
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              duration: Duration(milliseconds: 800),
                              isIos: true,
                              child: ReadScreen(
                                pdfPath: book.pdf!,
                                name: book.name!,
                              ),
                              type: PageTransitionType.rightToLeft,
                            ),
                          );
                        },
                      ),
                    ),
                  ]
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
