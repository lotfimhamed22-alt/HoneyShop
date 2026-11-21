import 'package:flutter/material.dart';
import 'package:honeyshop/core/constants/app_assets.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // @override
  // void initState() {
  //   //  Future.delayed(
  //   //   Duration(seconds: 5),
  //   //   () => Navigator.pushReplacement(
  //   //     context,
  //   //     MaterialPageRoute(builder: (context) => OnboardingView()),
  //   //   ),
  //   // );
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [Image.asset(AppAssets.logo)])),
    );
  }
}
