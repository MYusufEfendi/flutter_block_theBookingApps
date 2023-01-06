import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_thebooking_apps/config/config.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/welcome/component/welcome_button.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/welcome/component/welcome_image.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/welcome/component/welcome_title.dart';

import 'welcome_cubit.dart';
import 'welcome_state.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => WelcomeCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<WelcomeCubit>(context);

    return Scaffold(
      backgroundColor: AppColor.accentBlue,
      body: Column(
        children: [
          const WelcomeTitle(),
          const WelcomeButton(),
          const WelcomeImage(),
        ],
      ),
    );
  }
}


