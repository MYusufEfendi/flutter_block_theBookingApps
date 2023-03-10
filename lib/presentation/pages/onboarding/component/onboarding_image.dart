import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/onboarding/onboarding_state.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Expanded(
          child: PageView.builder(
            itemBuilder: (c, i) =>
                Image.asset(cubit.state.onboardingList[i].image ?? ""),
            itemCount: cubit.state.onboardingList.length,
            onPageChanged: cubit.goTo,
            controller: cubit.state.imageController,
          ),
        );
      },
    );
  }
}
