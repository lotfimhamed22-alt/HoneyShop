import 'package:flutter/material.dart';
import 'package:honeyshop/core/constants/app_assets.dart';
import 'package:honeyshop/core/shared_widgets/content_wrapper.dart';
import 'package:honeyshop/feature/onboarding/presentation/view/screen/onboarding_view.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingView()),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ContentWrapper(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset(AppAssets.logo)],
        ),
      ),
    );
  }
}
