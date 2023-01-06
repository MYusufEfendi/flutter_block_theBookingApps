import 'package:flutter/material.dart';
import 'package:flutter_bloc_thebooking_apps/config/theme/app_dimen.dart';
import 'package:flutter_bloc_thebooking_apps/data/src/img_string.dart';

class WelcomeImage extends StatefulWidget {
  const WelcomeImage({Key? key}) : super(key: key);

  @override
  State<WelcomeImage> createState() => _WelcomeImageState();
}

class _WelcomeImageState extends State<WelcomeImage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Image.asset(ImgString.backdrop),
    ));
  }
}
