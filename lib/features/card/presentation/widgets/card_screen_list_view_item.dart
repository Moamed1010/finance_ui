
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styling/app_assets.dart';
import '../../../../core/styling/app_styles.dart';
import '../../../../core/widgets/spacing_widget.dart';

class CardScreenListViewItem extends StatelessWidget {
  const CardScreenListViewItem({
    super.key,
    required this.cardType,
    required this.balance,
    required this.date,
    required this.cardNumber,
    required this.color,
  });
  final String cardType;
  final num balance;
  final String date;
  final String cardNumber;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Stack(
        children: [
          Container(
            width: 327.w,
            height: 179.h,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16.r),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              AppAssets.layer2,
              width: 235,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              AppAssets.layer1,
              width: 175,
              height: 130,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 26.h,
            right: 29.w,
            child: Image.asset(
              AppAssets.visa,
              width: 50.w,
              height: 16.h,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 24.w,
            top: 24.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardType,
                  style: AppStyles.black16w500Style.copyWith(
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                ),
                const HeightSpace(18),
                Text(
                  'Balance',
                  style: AppStyles.black16w500Style.copyWith(
                    // ignore: deprecated_member_use
                    color: Colors.white.withOpacity(.5),
                    fontSize: 12.sp,
                  ),
                ),
                const HeightSpace(8),
                Text(
                  "$balance EG",
                  style: AppStyles.black16w500Style.copyWith(
                    color: Colors.white,
                    fontSize: 20.sp,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 24.w,
            bottom: 17.h,
            child: Text(
              date,
              style: AppStyles.black16w500Style.copyWith(
                color: Colors.white,
                fontSize: 12.sp,
              ),
            ),
          ),
          Positioned(
            left: 24.w,
            bottom: 17.h,
            child: Text(
              cardNumber,
              style: AppStyles.black16w500Style.copyWith(
                // ignore: deprecated_member_use
                color: Colors.white.withOpacity(.7),
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
