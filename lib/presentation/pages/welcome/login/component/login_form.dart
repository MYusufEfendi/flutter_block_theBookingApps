import 'package:flutter/material.dart';
import 'package:flutter_bloc_thebooking_apps/config/config.dart';
import 'package:flutter_bloc_thebooking_apps/config/theme/app_dimen.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/widget/app_input_text.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/widget/primary_button.dart';
import 'package:flutter_bloc_thebooking_apps/util/util.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: AppFont.h3,
          ),
          16.0.height,
          const AppInputText(
            label: "Email",
          ),
          16.0.height,
          const AppInputText(
            label: "Password",
          ),
          16.0.height,
          PrimaryButton(
              type: PrimaryButtonType.type3,
              width: double.infinity,
              onPressed: () {},
              text: "Login")
        ],
      ),
    );
  }
}
