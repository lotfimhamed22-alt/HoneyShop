import 'package:flutter/material.dart';
import 'package:honeyshop/core/theme/app_color.dart';

class TextformfieldShared extends StatelessWidget {
  const TextformfieldShared({
    super.key,
    required this.labelText,
    required this.prefixIcon,
  });
  final String labelText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: labelText,
        hintStyle: TextStyle(color: AppColor.labeTextColor),
      ),
    );
  }
}
