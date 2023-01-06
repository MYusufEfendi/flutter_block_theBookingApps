import 'package:flutter/material.dart';
import 'package:flutter_bloc_thebooking_apps/config/config.dart';
import 'package:flutter_bloc_thebooking_apps/util/util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: "Forgot password? ",
              style: AppFont.paragraphSmall.copyWith(color: AppColor.ink02)),
          TextSpan(text: " Forgot", style: AppFont.paragraphSmallBold)
        ])),
        8.0.height,
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: "Don\'t have account? ",
              style: AppFont.paragraphSmall.copyWith(color: AppColor.ink02)),
          TextSpan(
              text: " Create new Account", style: AppFont.paragraphSmallBold)
        ]))
      ],
    );
  }
}
