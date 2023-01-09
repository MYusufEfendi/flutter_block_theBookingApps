import 'package:flutter/material.dart';
import 'package:flutter_bloc_thebooking_apps/config/theme/app_dimen.dart';
import 'package:flutter_bloc_thebooking_apps/config/theme/theme.dart';
import 'package:flutter_bloc_thebooking_apps/data/src/img_string.dart';
import 'package:flutter_bloc_thebooking_apps/util/util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteHeader extends StatelessWidget {
  const FavoriteHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDimen.w8),
      margin: EdgeInsets.all(AppDimen.w16),
      height: 163.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Image.asset(ImgString.cittaPlants3),
          24.0.width,
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Italy",
                style: AppFont.paragraphSmall,
              ),
              8.0.height,
              Text(
                "meet new roomies and find adventures",
                style: AppFont.h4.copyWith(height: 1.2.sp),
              )
            ],
          ))
        ],
      ),
    );
  }
}
