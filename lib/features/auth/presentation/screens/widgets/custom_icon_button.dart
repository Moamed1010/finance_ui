import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onPressed;
  const CustomIconButton({
    super.key,
    required this.iconPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: Color(0xffE8ECF4)),
        ),
        child: Center(
          child: SvgPicture.asset(
            iconPath,
            height: 24.h,
            width: 12.w,
          ),
        ),
      ),
    );
  }
}
