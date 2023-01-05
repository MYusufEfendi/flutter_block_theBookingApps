import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc_thebooking_apps/data/model/onboarding/Onboarding.dart';
import 'package:flutter_bloc_thebooking_apps/data/src/img_string.dart';

class OnboardingState {
  final List<Onboarding> onboardingList = [
    Onboarding(
        title: "Find a Roome",
        description: "lorem",
        image: ImgString.cittaStanding),
    Onboarding(
        title: "Your Rommate Finder",
        description: "wekasjhdkajhsdasd",
        image: ImgString.cittaStanding1),
    Onboarding(
        title: "Find your match",
        description: "laksjdlkasjdlkajldkasldjas",
        image: ImgString.cittaStanding2),
  ];

  int currentPage = 0;
  PageController imageController = PageController(initialPage: 0, keepPage: false);

  OnboardingState init() {
    return OnboardingState();
  }

  OnboardingState clone() {
    return OnboardingState();
  }
}
