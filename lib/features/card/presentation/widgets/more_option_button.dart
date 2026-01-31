import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styling/app_colors.dart';

class CustomAppBarrIcon extends StatelessWidget {
  const CustomAppBarrIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 48.w,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(50.r),
        border: Border.all(color: Color(0xffE8ECF4)),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(icon, color: AppColors.blackColor, size: 30.sp),
        ),
      ),
    );
  }
}
