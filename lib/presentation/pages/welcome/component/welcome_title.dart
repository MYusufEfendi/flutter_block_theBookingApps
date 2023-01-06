import 'package:flutter/material.dart';
import 'package:flutter_bloc_thebooking_apps/config/config.dart';
import 'package:flutter_bloc_thebooking_apps/config/theme/app_dimen.dart';
import 'package:flutter_bloc_thebooking_apps/util/util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppDimen.w16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          24.0.height,
          Text(
            "Find the Perfect Roomats",
            style: AppFont.h3,
          ),
          Text(
            "Find the Perfect Roomats Find the Perfect Roomats Find the Perfect Roomats Find the Perfect Roomats",
            style: AppFont.paragraphMedium,
          )
        ],
      ),
    );
  }
}
