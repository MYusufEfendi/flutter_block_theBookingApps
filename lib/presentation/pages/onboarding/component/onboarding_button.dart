import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_thebooking_apps/extension/double_extension.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/widget/primary_button.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/widget/secondary_button.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SecondaryButton(
          onPressed: cubit.skip,
          text: "Skip",
          width: 147.5,
        ),
        16.0.width,
        PrimaryButton(
          onPressed: cubit.next,
          text: "Next",
          width: 147.5,
        )
      ],
    );
  }
}
