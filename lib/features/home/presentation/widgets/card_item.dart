import 'package:financename/core/styling/app_assets.dart';
import 'package:financename/core/styling/app_styles.dart';
import 'package:financename/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItem extends StatelessWidget {
  final String cardType;
  final num balance;
  final String date;
  final String cardNumber;
  final Color color;

  const CardItem({
    super.key,
    required this.cardType,
    required this.balance,
    required this.date,
    required this.cardNumber,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 207.w,
          height: 263.h,
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
            height: 250,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.layer1,
            width: 175,
            height: 160,
            fit: BoxFit.fill,
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
              const HeightSpace(57),
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
          bottom: 26.h,
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
          bottom: 26.h,
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
    );
  }
}
