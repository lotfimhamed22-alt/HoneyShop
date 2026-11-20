import 'package:flutter/material.dart';
import 'package:honeyshop/core/constants/breakpoints.dart';

class ContentWrapper extends StatelessWidget {
  final Widget child;
  final double maxWidth;

  const ContentWrapper({
    super.key,
    required this.child,
    this.maxWidth = Breakpoints.maxContentWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: child,
      ),
    );
  }
}
