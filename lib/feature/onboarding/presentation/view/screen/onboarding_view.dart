import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:honeyshop/core/constants/app_strings.dart';
import 'package:honeyshop/core/shared_widgets/button_shared_widget.dart';
import 'package:honeyshop/core/shared_widgets/content_wrapper.dart';
import 'package:honeyshop/core/utils/responsive_size.dart';
import 'package:honeyshop/feature/onboarding/data/model/onboarding_model.dart';
import 'package:honeyshop/feature/onboarding/data/repo/onboarding_repo.dart';
import 'package:honeyshop/feature/onboarding/presentation/view/widgets/page_view_widget.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ContentWrapper(
      child: Scaffold(
        body: Column(
          children: [
            Gap(100.rh),
            SizedBox(
              height: 460.rh,
              child: PageView.builder(
                controller: controller,
                itemCount: onboardingPages.length,
                onPageChanged: (value) {
                  currentIndex = value;
                  setState(() {});
                },
                itemBuilder: (context, index) {
                  return PageViewWidget(index: index);
                },
              ),
            ),
            ButtonSharedWidget(
              text: currentIndex == 2 ? AppStrings.getStarted : AppStrings.next,
              onPressed: () {
                OnboardingRepo().toNextPage(
                  currentIndex,
                  context,
                  onboardingPages.length,
                  controller,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
