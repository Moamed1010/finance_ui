import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styling/app_colors.dart';
import '../../../../core/styling/app_styles.dart';
import '../../../../core/widgets/spacing_widget.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });
  final IconData icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156.h,
      width: 140.w,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE3E9ED), width: 1),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const HeightSpace(16),
          Container(
            height: 48.h,
            width: 48.h,
            decoration: BoxDecoration(
              color: Color(0xffECF1F6),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Icon(icon, color: AppColors.primaryColor, size: 24.r),
          ),
          const HeightSpace(12),
          Text(
            title,
            style: AppStyles.black16w500Style.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const HeightSpace(4),
          Text(description, style: AppStyles.gray12MediumStyle),
        ],
      ),
    );
  }
}
