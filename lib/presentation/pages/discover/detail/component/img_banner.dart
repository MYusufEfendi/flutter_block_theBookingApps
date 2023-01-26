import 'package:flutter/material.dart';
import 'package:flutter_bloc_thebooking_apps/config/config.dart';
import 'package:flutter_bloc_thebooking_apps/data/src/img_string.dart';

class ImgBanner extends StatelessWidget {
  const ImgBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: AppDimen.w60,
        left: AppDimen.w16,
        right: AppDimen.w16,
        bottom: AppDimen.w24,
      ),
      child: Container(
        padding: EdgeInsets.all(AppDimen.w8),
          decoration: BoxDecoration(
              color: AppColor.accentPink,
              borderRadius: BorderRadius.circular(AppDimen.w8)),
          child: Image.asset(ImgString.livingRoom)),
    );
  }
}
