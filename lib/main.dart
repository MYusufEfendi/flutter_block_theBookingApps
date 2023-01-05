import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_thebooking_apps/data/src/img_string.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/pages.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/widget/disable_button.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/widget/primary_button.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/widget/secondary_button.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/widget/square_checkbox.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: 'Poppins',
            primarySwatch: Colors.blue,
          ),
          home: const OnboardingPage(),
        );
      }
    );
  }
}
