import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styling/app_colors.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final double? buttonHeight;
  final double? buttonWidth;
  final VoidCallback? onPressed;
  final double? borderRadius;
  final Color? textColor;
  final double? fontSize;
  const PrimaryButtonWidget({
    super.key,
    this.buttonText,
    this.buttonColor,
    this.buttonHeight,
    this.buttonWidth,
    this.onPressed,
    this.textColor,
    this.borderRadius,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor ?? AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
        ),
        fixedSize: Size(buttonWidth ?? 331.w, buttonHeight ?? 56.h),
      ),
      child: Text(
        buttonText ?? "",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: textColor ?? Colors.white,
          fontSize: fontSize ?? 16.sp,
        ),
      ),
    );
  }
}
