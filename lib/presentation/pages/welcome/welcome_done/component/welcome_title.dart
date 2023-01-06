import 'package:flutter/material.dart';
import 'package:flutter_bloc_thebooking_apps/config/config.dart';
import 'package:flutter_bloc_thebooking_apps/config/theme/app_dimen.dart';
import 'package:flutter_bloc_thebooking_apps/util/util.dart';

class WelcomeTitle extends StatefulWidget {
  const WelcomeTitle({Key? key}) : super(key: key);

  @override
  State<WelcomeTitle> createState() => _WelcomeTitleState();
}

class _WelcomeTitleState extends State<WelcomeTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w12),
      child: Column(
        children: [
          Text(
            "Find Yout Roomie",
            style: AppFont.h4,
          ),
          8.0.height,
          Text(
            "alsjdlaksjdlkajsd",
            style: AppFont.paragraphSmall,
          )
        ],
      ),
    );
  }
}
