import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_thebooking_apps/config/config.dart';
import 'package:flutter_bloc_thebooking_apps/config/theme/app_dimen.dart';
import 'package:flutter_bloc_thebooking_apps/data/src/img_string.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/discover/trips/trips_cubit.dart';
import 'package:flutter_bloc_thebooking_apps/util/util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TripsOtherMatches extends StatelessWidget {
  const TripsOtherMatches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<TripsCubit>(context);
    return Expanded(
        child: Column(
      children: [_header(), _roomiesList(context)],
    ));
  }

  Widget _roomiesList(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemBuilder: (c, i) => _roomiesItem(context),
      itemCount: 3,
      scrollDirection: Axis.horizontal,
    ));
  }

  Widget _roomiesItem(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          right: AppDimen.w16,
          left: AppDimen.w16,
          bottom: AppDimen.h16,
          top: 49.h),
      margin: EdgeInsets.only(
          left: AppDimen.w16, top: AppDimen.h24, bottom: AppDimen.h16),
      width: MediaQuery.of(context).size.width / 2 - AppDimen.w38,
      decoration: BoxDecoration(
          color: AppColor.ink06,
          borderRadius: BorderRadius.circular(AppDimen.w16)),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(ImgString.cittaPlants1),
          ),
          37.0.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Fandi",
                style: AppFont.paragraphLargeBold,
              ),
              Text(
                "\$500",
                style: AppFont.paragraphSmall,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _avatar() {
    return SizedBox(
      height: 56.w,
      width: 56.w,
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
              backgroundImage: AssetImage(ImgString.avatar),
            ),
          ),
        ],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.only(
          left: AppDimen.w16, right: AppDimen.w16, top: AppDimen.h24),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Other Matches",
            style: AppFont.h3,
          ),
        ],
      ),
    );
  }
}
