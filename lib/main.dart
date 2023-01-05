import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_thebooking_apps/data/src/img_string.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/pages.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/widget/disable_button.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/widget/primary_button.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/widget/secondary_button.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/widget/square_checkbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: const OnboardingPage(),
    );
  }
}
