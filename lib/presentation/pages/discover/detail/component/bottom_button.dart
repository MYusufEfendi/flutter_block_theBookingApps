import 'package:flutter/material.dart';
import 'package:flutter_bloc_thebooking_apps/config/config.dart';
import 'package:flutter_bloc_thebooking_apps/data/src/img_string.dart';
import 'package:flutter_bloc_thebooking_apps/util/util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 52.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimen.w8),
            color: AppColor.accentPink),
        padding: EdgeInsets.only(
            top: AppDimen.w8,
            bottom: AppDimen.w4,
            left: AppDimen.w8,
            right: AppDimen.w8),
        margin: EdgeInsets.only(
          left: AppDimen.w24,
          right: AppDimen.w24,
          bottom: AppDimen.w36,
          top: AppDimen.w16,
        ),
        child: Row(
          children: [
            _avatar(),
            12.0.width,
            _columLabel(),
            Expanded(child: SizedBox()),
            Icon(
              Icons.favorite,
              size: 20.w,
              color: AppColor.ink02,
            ),
            8.0.width,
            Icon(
              Icons.send,
              size: 20.w,
              color: AppColor.ink02,
            ),
            8.0.width,
            Icon(
              Icons.more_vert,
              size: 20.w,
              color: AppColor.ink02,
            )
          ],
        ),
      ),
    );
  }

  Widget _columLabel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Title",
          style: AppFont.paragraphMediumBold,
        ),
        Text(
          "Label",
          style: AppFont.paragraphSmall.copyWith(color: AppColor.ink02),
        ),
      ],
    );
  }

  Widget _avatar() {
    return SizedBox(
      height: 40.w,
      width: 40.w,
      child: Stack(
        children: [
          Center(
            child: CircleAvatar(
              radius: 28.w,
              backgroundColor: AppColor.ink03,
            ),
          ),
          Center(
            child: CircleAvatar(
              radius: 26.w,
              backgroundColor: AppColor.ink06,
              backgroundImage: const AssetImage(ImgString.avatar),
            ),
          ),
        ],
      ),
    );
  }
}
