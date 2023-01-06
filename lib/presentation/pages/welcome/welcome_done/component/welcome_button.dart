import 'package:flutter/material.dart';
import 'package:flutter_bloc_thebooking_apps/config/theme/app_dimen.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/widget/primary_button.dart';

class WelcomeButton extends StatefulWidget {
  const WelcomeButton({Key? key}) : super(key: key);

  @override
  State<WelcomeButton> createState() => _WelcomeButtonState();
}

class _WelcomeButtonState extends State<WelcomeButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: PrimaryButton(
        onPressed: () {},
        text: "Let's Go",
        width: double.infinity,
        type: PrimaryButtonType.type3,
      ),
    );
  }
}
