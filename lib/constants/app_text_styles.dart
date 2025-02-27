import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lab8/constants/app_colors.dart';

class AppTextStyles {
  static final TextStyle px20W900White = TextStyle(
    fontFamily: 'SF',
    fontSize: 20.sp,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w900,
    color: AppColors.white,
  );
  static final TextStyle px30W500Grey20 = TextStyle(
    fontFamily: 'SF',
    fontSize: 30.sp,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    color: AppColors.grey20,
  );
  static final TextStyle px14200DeepBlue = TextStyle(
    fontFamily: 'SF',
    fontSize: 14.sp,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w900,
    color: AppColors.deepBlue,
  );
  static final TextStyle px20W500Green = TextStyle(
    fontFamily: 'SF',
    fontSize: 20.sp,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    color: AppColors.green,
  );
}
