
import 'package:financename/core/styling/app_colors.dart';
import 'package:financename/core/styling/app_styles.dart';
import 'package:financename/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInorOutComeItem extends StatelessWidget {
  const CustomInorOutComeItem({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });
  final IconData icon;
  final String title;
  final num value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.h,
      width: 156.w,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE3E9ED), width: 1),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 16.h, left: 16.w, bottom: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeightSpace(16),
            Container(
              height: 48.h,
              width: 48.h,
              decoration: BoxDecoration(
                color: Color(0xffE2E0E4),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Icon(icon, color: AppColors.primaryColor, size: 24.r),
            ),
            const HeightSpace(12),
            Text(
              '$value EG',
              style: AppStyles.black16w500Style.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const HeightSpace(4),
            Text(title, style: AppStyles.gray12MediumStyle),
          ],
        ),
      ),
    );
    
  }
}
