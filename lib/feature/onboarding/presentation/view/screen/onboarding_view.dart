import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:honeyshop/core/constants/app_strings.dart';
import 'package:honeyshop/core/shared_widgets/button_shared_widget.dart';
import 'package:honeyshop/core/shared_widgets/content_wrapper.dart';
import 'package:honeyshop/core/utils/responsive_size.dart';
import 'package:honeyshop/feature/onboarding/data/model/onboarding_model.dart';
import 'package:honeyshop/feature/onboarding/presentation/view/widgets/page_view_widget.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  PageController? controller = PageController();

  @override
  Widget build(BuildContext context) {
    return ContentWrapper(
      child: Scaffold(
        body: Column(
          children: [
            Gap(100.rh),
            SizedBox(
              height: 440.rh,
              child: Expanded(
                child: PageView.builder(
                  controller: controller,
                  itemCount: onboardingPages.length,
                  onPageChanged: (value) {},
                  itemBuilder: (context, index) {
                    return PageViewWidget(index: index);
                  },
                ),
              ),
            ),
            ButtonSharedWidget(text: AppStrings.next, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
