import 'package:flutter/material.dart';
import '../constants/breakpoints.dart';
import '../utils/screen_helper.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final type = ScreenHelper.typeOfDevice(constraints.maxWidth);

        switch (type) {
          case ScreenType.desktop:
            return desktop ?? tablet ?? mobile;
          case ScreenType.tablet:
            return tablet ?? mobile;
          case ScreenType.mobile:
            return mobile;
        }
      },
    );
  }
}
