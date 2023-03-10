import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_thebooking_apps/config/config.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/onboarding/onboarding_state.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              cubit.state.onboardingList.length,
              (index) => index == cubit.state.currentPage
                  ? _activeIndicator(index)
                  : _inacctiveIndicator(index)),
        );
      },
    );
  }

  Widget _activeIndicator(int index) {
    return Container(
      width: 16,
      height: 6,
      margin: EdgeInsets.symmetric(horizontal: index== 1 ? 12: 0),
      decoration: BoxDecoration(
          color: AppColor.accentBlue, borderRadius: BorderRadius.circular(4)),
    );
  }

  Widget _inacctiveIndicator(int index) {
    return Container(
      width: 6,
      height: 6,
      margin: EdgeInsets.symmetric(horizontal: index== 1 ? 12: 0),
      decoration: BoxDecoration(
          color: AppColor.ink03, borderRadius: BorderRadius.circular(4)),
    );
  }
}
