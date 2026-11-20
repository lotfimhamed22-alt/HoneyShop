import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:honeyshop/core/theme/app_color.dart';
import 'package:honeyshop/core/utils/responsive_size.dart';

class AppTheme {
  static ThemeData getAppTheme() {
    return ThemeData(
      // scaffoldBackgroundColor
      scaffoldBackgroundColor: AppColor.myWhite,
      // appBarTheme
      appBarTheme: AppBarTheme(
        backgroundColor: AppColor.myWhite,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
      ),
      // elevatedButtonTheme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.honey,
          foregroundColor: AppColor.myWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.r),
          ),
          elevation: 5,
          alignment: Alignment.center,
          textStyle: TextStyle(fontSize: 18.sp, color: AppColor.myWhite),
        ),
      ),
      // textfield
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColor.myBorderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColor.myBorderColor),
        ),
      ),
      // text theme
      textTheme: TextTheme(
        headlineLarge: TextStyle(fontSize: 28.rsp, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(
          fontSize: 24.rsp,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: TextStyle(fontSize: 20.rsp, fontWeight: FontWeight.w600),
        titleMedium: TextStyle(fontSize: 16.rsp, fontWeight: FontWeight.w600),
        bodyLarge: TextStyle(fontSize: 16.rsp),
        bodyMedium: TextStyle(fontSize: 14.rsp),
        bodySmall: TextStyle(fontSize: 12.rsp),
        labelLarge: TextStyle(fontSize: 14.rsp, fontWeight: FontWeight.w600),
      ),
    );
  }
}
