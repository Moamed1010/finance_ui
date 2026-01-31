import 'package:financename/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styling/app_assets.dart';
import '../../../../core/styling/app_colors.dart';
import '../../../../core/styling/app_styles.dart';

class TopProfileNotificationWidget extends StatelessWidget {
  const TopProfileNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            fit: BoxFit.cover,
            AppAssets.profile,
            width: 48.w,
            height: 48.h,
          ),
        ),
        const WidthSpace(11),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'welcome Back',
              style: AppStyles.gray12MediumStyle.copyWith(
                color: Color(0xff9CA4AB),
              ),
            ),
            Text(
              'Mohamed Hassan',
              style: AppStyles.black15BoldStyle.copyWith(
                fontSize: 18.sp,
                color: Color(0xff1F2C37),
              ),
            ),
          ],
        ),
        const WidthSpace(68),
        Container(
          width: 48.w,
          height: 48.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Color(0xffE3E9ED)),
          ),
          child: Icon(
            Icons.notifications,
            color: AppColors.primaryColor,
            size: 26.sp,
          ),
        ),
      ],
    );
  }
}
