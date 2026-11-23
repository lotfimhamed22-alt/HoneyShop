import 'package:honeyshop/core/constants/app_assets.dart';
import 'package:honeyshop/core/constants/app_strings.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String description;

  const OnboardingModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnboardingModel> onboardingPages = [
  OnboardingModel(
    image: AppAssets.onboarding1,
    title: AppStrings.textOnboarding1,
    description: AppStrings.onboarding1,
  ),
  OnboardingModel(
    image: AppAssets.onboarding2,
    title: AppStrings.textOnboarding2,
    description: AppStrings.onboarding2,
  ),
  OnboardingModel(
    image: AppAssets.onboarding3,
    title: AppStrings.textOnboarding3,
    description: AppStrings.onboarding3,
  ),
];
