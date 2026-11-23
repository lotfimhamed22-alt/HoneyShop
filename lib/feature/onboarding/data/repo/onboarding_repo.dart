import 'package:flutter/material.dart';
import 'package:honeyshop/feature/auth/presentation/view/screens/login_screen.dart';

class OnboardingRepo {
  toNextPage(
    int currentIndex,
    BuildContext context,
    int length,
    PageController controller,
  ) {
    currentIndex++;
    if (currentIndex > length - 1) {
      //navigator
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => LoginScreen()),
      );
    } else {
      controller.animateToPage(
        currentIndex,
        duration: Duration(milliseconds: 800),
        curve: Curves.linear,
      );
    }
  }
}
