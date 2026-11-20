import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/breakpoints.dart';

extension ResponsiveSize on num {
  /// هل الشاشة الحالية صغيرة بما يكفي لتطبيق التحجيم؟
  bool get _scale => ScreenUtil().screenWidth < Breakpoints.tablet;

  /// عرض
  double get rw => _scale ? w : toDouble();

  /// ارتفاع
  double get rh => _scale ? h : toDouble();

  /// حجم خط
  double get rsp => _scale ? sp : toDouble();

  /// نصف قطر / مسافات متساوية
  double get rr => _scale ? r : toDouble();

  // toDouble() => do not scale the num "the same"
}
