import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styling/app_styles.dart';
import '../../../../core/widgets/spacing_widget.dart';

class CustomProfileInformationView extends StatelessWidget {
  const CustomProfileInformationView({
    super.key,
    required this.title,
    required this.content,
  });
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78.h,
      width: 337.w,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xffF2F2F5), width: 1)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.gray12MediumStyle.copyWith(fontSize: 14.sp),
          ),
          const HeightSpace(10),
          Text(content, style: AppStyles.black16w500Style),
        ],
      ),
    );
  }
}
