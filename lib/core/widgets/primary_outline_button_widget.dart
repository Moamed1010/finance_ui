
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styling/app_colors.dart';

class PrimaryOutlineButtonWidget extends StatelessWidget {
  final String? buttonText;
  final Color? borderColor;
  final double? buttonHeight;
  final double? buttonWidth;
  final VoidCallback? onPressed;
  final double? borderRadius;
  final Color? textColor;
  final double? fontSize;
  const PrimaryOutlineButtonWidget({
    super.key,
    this.buttonText,
    this.borderColor,
    this.buttonHeight,
    this.buttonWidth,
    this.onPressed,
    this.borderRadius,
    this.textColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: borderColor ?? AppColors.primaryColor,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
        ),
        fixedSize: Size(buttonWidth ?? 331.w, buttonHeight ?? 56.h),
      ),
      child: Text(
        buttonText ?? "",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: textColor ?? AppColors.primaryColor,
          fontSize: fontSize ?? 16,
        ),
      ),
    );
  }
}
