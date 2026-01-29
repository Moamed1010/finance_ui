
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/styling/app_colors.dart';
import '../../../../../core/styling/app_styles.dart';

class CustomRegisterOrLoginWidget extends StatelessWidget {
  final String text;
  const CustomRegisterOrLoginWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 95.w,
          child: Divider(color: AppColors.greyColor, thickness: 1),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Text(
            text,
            style: AppStyles.black15BoldStyle.copyWith(
              color: const Color(0xff6A707C),
            ),
          ),
        ),
        SizedBox(
          width: 95.w,
          child: Divider(color: AppColors.greyColor, thickness: 1),
        ),
      ],
    );
  }
}
