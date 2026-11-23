import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:honeyshop/core/constants/app_assets.dart';
import 'package:honeyshop/core/constants/app_strings.dart';
import 'package:honeyshop/core/shared_widgets/button_shared_widget.dart';
import 'package:honeyshop/core/shared_widgets/text_shared_widget.dart';
import 'package:honeyshop/core/shared_widgets/textform_shared_widget.dart';
import 'package:honeyshop/core/theme/app_color.dart';
import 'package:honeyshop/core/utils/responsive_size.dart';
import 'package:honeyshop/feature/auth/presentation/view/screens/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey? formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.rw),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Gap(100.rh),
                  // logo
                  Image.asset(AppAssets.logo, width: 220.rw, fit: BoxFit.cover),
                  Gap(40.rh),
                  // textfieldform
                  TextformfieldShared(
                    labelText: AppStrings.emailLable,
                    prefixIcon: Icon(
                      Icons.email,
                      color: AppColor.labeTextColor,
                    ),
                  ),
                  Gap(10.rh),
                  TextformfieldShared(
                    labelText: AppStrings.password,
                    prefixIcon: Icon(Icons.lock, color: AppColor.labeTextColor),
                  ),
                  // Row
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                        activeColor: AppColor.honey,
                      ),
                      TextSharedWidget(
                        text: AppStrings.rememberMe,
                        color: AppColor.labeTextColor,
                      ),
                      Spacer(),
                      TextSharedWidget(
                        text: AppStrings.forgetPassword,
                        color: AppColor.labeTextColor,
                      ),
                    ],
                  ),
                  Gap(20.rh),
                  // Sign In
                  ButtonSharedWidget(text: AppStrings.logIn, onPressed: () {}),
                  Gap(10.rh),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextSharedWidget(
                        text: AppStrings.areYouNewInMarketi,
                        color: AppColor.labeTextColor,
                        fontSize: 14.rsp,
                        fontWeight: FontWeight.w800,
                      ),
                      Gap(4.rh),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        child: TextSharedWidget(
                          text: AppStrings.register,
                          color: AppColor.honey,
                          fontSize: 14.rsp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
