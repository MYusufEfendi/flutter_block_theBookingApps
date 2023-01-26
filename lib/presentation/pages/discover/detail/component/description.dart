import 'package:flutter/material.dart';
import 'package:flutter_bloc_thebooking_apps/config/config.dart';
import 'package:flutter_bloc_thebooking_apps/data/src/img_string.dart';
import 'package:flutter_bloc_thebooking_apps/util/util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppDimen.w24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "City of Los Angeles",
              style: AppFont.h3,
            ),
            13.0.height,
            ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: 3,
                itemBuilder: (c, i) => _descItem(i)),
            13.0.height,
            Text(
              "Hey you, looking for a roommate? We've helped millions across the nation find their perfect match... and you're next! Hey you, looking for a roommate? We've helped millions across the nation find their perfect match... and you're next!",
              style: AppFont.paragraphMedium.copyWith(color: AppColor.ink02),
            ),
          ],
        ),
      ),
    );
  }

  Widget _descItem(int index) {
    return Padding(
      padding: EdgeInsets.only(top: index != 0 ? AppDimen.w12 : 0),
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            color: AppColor.ink01,
            size: AppDimen.w20,
          ),
          13.0.width,
          Text(
            "Unlimited downloads",
            style: AppFont.paragraphMedium,
          )
        ],
      ),
    );
  }
}
