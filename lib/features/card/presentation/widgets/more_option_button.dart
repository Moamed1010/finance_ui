import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styling/app_colors.dart';

class MoreOptionButton extends StatelessWidget {
  const MoreOptionButton({super.key});

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
          icon: Icon(
            Icons.more_horiz,
            color: AppColors.blackColor,
            size: 30.sp,
          ),
        ),
      ),
    );
  }
}
