import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:honeyshop/core/constants/app_assets.dart';
import 'package:honeyshop/core/constants/app_strings.dart';
import 'package:honeyshop/core/shared_widgets/button_shared_widget.dart';
import 'package:honeyshop/core/shared_widgets/text_shared_widget.dart';
import 'package:honeyshop/core/shared_widgets/textform_shared_widget.dart';
import 'package:honeyshop/core/theme/app_color.dart';
import 'package:honeyshop/core/utils/responsive_size.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.rw),
            child: Form(
              // key: ,
              child: Column(
                children: [
                  Gap(35.rh),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          padding: EdgeInsets.all(14.rw),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColor.borderColor),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.arrow_back_ios_new),
                        ),
                      ),
                    ],
                  ),
                  // logo
                  Image.asset(AppAssets.logo, width: 150.rw),
                  // full name
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [TextSharedWidget(text: AppStrings.yourName)],
                  ),
                  TextformfieldShared(
                    labelText: AppStrings.fullName,
                    prefixIcon: Icon(
                      Icons.person,
                      color: AppColor.labeTextColor,
                    ),
                  ),
                  Gap(10.rh),
                  // username
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [TextSharedWidget(text: AppStrings.username)],
                  ),
                  TextformfieldShared(
                    labelText: AppStrings.username,
                    prefixIcon: Icon(
                      Icons.person,
                      color: AppColor.labeTextColor,
                    ),
                  ),
                  Gap(10.rh),
                  // phone number
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [TextSharedWidget(text: AppStrings.phoneNumber)],
                  ),
                  TextformfieldShared(
                    labelText: AppStrings.phone,
                    prefixIcon: Icon(
                      Icons.phone_android_outlined,
                      color: AppColor.labeTextColor,
                    ),
                  ),
                  Gap(10.rh),
                  // email
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [TextSharedWidget(text: AppStrings.emailText)],
                  ),
                  TextformfieldShared(
                    labelText: AppStrings.emailLable,
                    prefixIcon: Icon(
                      Icons.email,
                      color: AppColor.labeTextColor,
                    ),
                  ),
                  Gap(10.rh),
                  //password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [TextSharedWidget(text: AppStrings.password)],
                  ),
                  TextformfieldShared(
                    labelText: AppStrings.password,
                    prefixIcon: Icon(Icons.lock, color: AppColor.labeTextColor),
                  ),
                  Gap(10.rh),
                  // forget password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextSharedWidget(text: AppStrings.forgetPassword),
                    ],
                  ),
                  TextformfieldShared(
                    labelText: AppStrings.forgetPassword,
                    prefixIcon: Icon(Icons.lock, color: AppColor.labeTextColor),
                  ),
                  // Row
                  Gap(20.rh),
                  // Sign In
                  ButtonSharedWidget(text: AppStrings.signUp, onPressed: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
