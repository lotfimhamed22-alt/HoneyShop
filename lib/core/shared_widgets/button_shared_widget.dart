import 'package:flutter/material.dart';
import 'package:honeyshop/core/shared_widgets/text_shared_widget.dart';
import 'package:honeyshop/core/theme/app_color.dart';
import 'package:honeyshop/core/utils/responsive_size.dart';

class ButtonSharedWidget extends StatelessWidget {
  const ButtonSharedWidget({super.key, this.onPressed, required this.text});

  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColor.primary,
            blurRadius: 12,
            spreadRadius: 5,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      width: 250.rw,
      height: 45.rh,
      child: ElevatedButton(
        onPressed: onPressed,
        child: TextSharedWidget(
          text: text,
          fontSize: 20.rsp,
          color: AppColor.white,
          fontWeight: Theme.of(context).textTheme.bodyMedium!.fontWeight,
        ),
      ),
    );
  }
}
