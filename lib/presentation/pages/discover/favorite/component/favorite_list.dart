import 'package:flutter/material.dart';
import 'package:flutter_bloc_thebooking_apps/config/theme/app_dimen.dart';
import 'package:flutter_bloc_thebooking_apps/config/theme/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: 10, itemBuilder: (c, i) => _listItem()));
  }

  Widget _listItem() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppDimen.w16,
      ),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(AppDimen.w16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Yusuf Efendi",
                    style: AppFont.paragraphMediumBold,
                  ),
                  Text(
                    "Gresik Indonesia",
                    style:
                        AppFont.paragraphSmall.copyWith(color: AppColor.ink02),
                  )
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: AppColor.ink01,
                size: 12,
              )
            ],
          ),
        ),
      ),
    );
  }
}
