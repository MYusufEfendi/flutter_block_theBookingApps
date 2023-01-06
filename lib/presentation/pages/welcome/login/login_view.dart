import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/welcome/login/component/login_footer.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/welcome/login/component/login_form.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/welcome/login/component/login_image.dart';
import 'package:flutter_bloc_thebooking_apps/util/util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_cubit.dart';
import 'login_state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<LoginCubit>(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            36.0.height,
            const LoginImage(),
            48.0.height,
            const LoginForm(),
            16.0.height,
            const LoginFooter(),
          ],
        ),
      ),
    );
  }
}
