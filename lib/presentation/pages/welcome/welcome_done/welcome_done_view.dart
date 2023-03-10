import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_thebooking_apps/config/config.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/welcome/welcome_done/component/welcome_button.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/welcome/welcome_done/component/welcome_image.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/welcome/welcome_done/component/welcome_title.dart';
import 'package:flutter_bloc_thebooking_apps/util/util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'welcome_done_cubit.dart';
import 'welcome_done_state.dart';

class WelcomeDonePage extends StatelessWidget {
  const WelcomeDonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Welcome_doneCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<Welcome_doneCubit>(context);

    return Scaffold(
      backgroundColor: AppColor.accentGreen,
      body: Column(
        children: [
          10.2.height,
          const WelcomeImage(),
          24.0.height,
          const WelcomeTitle(),
          24.0.height,
          const WelcomeButton(),
          95.0.height
        ],
      ),
    );
  }
}
