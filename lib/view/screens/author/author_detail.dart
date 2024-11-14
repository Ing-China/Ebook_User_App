import 'package:bro_s_journey/controllers/author_detail_controller.dart';
import 'package:bro_s_journey/helpers/theme_helper.dart';
import 'package:bro_s_journey/models/authorz.dart';
import 'package:bro_s_journey/utils/dimension.dart';
import 'package:bro_s_journey/view/screens/author/widget/author_detail_widget.dart';
import 'package:bro_s_journey/view/screens/author/widget/description_widget.dart';
import 'package:bro_s_journey/view/screens/author/widget/image_widget.dart';
import 'package:bro_s_journey/view/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AuthorDetail extends StatefulWidget {
  final String id;
  final String name;
  const AuthorDetail({
    super.key,
    required this.id,
    required this.name,
  });

  @override
  State<AuthorDetail> createState() => _AuthorDetailState();
}

class _AuthorDetailState extends State<AuthorDetail> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AuthorDetailController()..fetchAuthorById(widget.id),
      child: Scaffold(
        backgroundColor: ThemeHelper.getPrimaryColor(context),
        appBar: CustomAppBar(
          title: widget.name,
          showBookMarkButton: false,
        ),
        body: Consumer<AuthorDetailController>(
          builder: (context, controller, _) {
            final author = controller.author ?? Authorz.fakeAuthors[0];
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageWidget(author: author),
                          AuthorDetailWidget(author: author),
                          Description(author: author),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
