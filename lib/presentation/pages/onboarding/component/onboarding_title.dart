import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_thebooking_apps/config/config.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/onboarding/onboarding_state.dart';
import 'package:flutter_bloc_thebooking_apps/util/util.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              cubit.state.onboardingList[cubit.state.currentPage].title ?? "",
              style: AppFont.h3,
              textAlign: TextAlign.center,
            ),
            8.0.height,
            Text(
              cubit.state.onboardingList[cubit.state.currentPage].description ??
                  "",
              style: AppFont.paragraphMedium,
              textAlign: TextAlign.center,
            )
          ],
        );
      },
    );
  }
}
