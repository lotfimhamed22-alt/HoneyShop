import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:honeyshop/core/shared_widgets/text_shared_widget.dart';
import 'package:honeyshop/core/theme/app_color.dart';
import 'package:honeyshop/core/utils/responsive_size.dart';
import 'package:honeyshop/feature/onboarding/data/model/onboarding_model.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 400.rw,
          height: 220.rh,
          child: Image.asset(onboardingPages[index].image),
        ),
        Gap(35.rh),

        TextSharedWidget(
          text: onboardingPages[index].title,
          fontSize: 22.rsp,
          fontWeight: Theme.of(context).textTheme.bodyMedium!.fontWeight,
          color: AppColor.honey,
        ),
        Gap(10.rh),

        TextSharedWidget(
          text: onboardingPages[index].description,
          fontSize: 16.rsp,
          fontWeight: Theme.of(context).textTheme.bodyMedium!.fontWeight,
          color: AppColor.honey,
        ),
      ],
    );
  }
}
