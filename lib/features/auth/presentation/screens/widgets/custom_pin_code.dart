import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/routing/app_routes.dart';
import '../../../../../core/styling/app_colors.dart';
import '../../../../../core/styling/app_styles.dart';

class CustomPinCode extends StatelessWidget {
  const CustomPinCode({super.key, required this.pinCodeController});

  final TextEditingController pinCodeController;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      obscureText: false,
      controller: pinCodeController,
      keyboardType: TextInputType.number,
      textStyle: AppStyles.primaryHeadingStyle.copyWith(fontSize: 22.sp),
      enableActiveFill: true,
      pinTheme: PinTheme(
        fieldHeight: 60.h,
        fieldWidth: 70.w,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8.r),
        selectedColor: AppColors.primaryColor,
        selectedFillColor: AppColors.whiteColor,
        activeColor: AppColors.primaryColor,
        activeFillColor: AppColors.whiteColor,
        inactiveColor: AppColors.greyColor,
        // ignore: deprecated_member_use
        inactiveFillColor: AppColors.greyColor.withOpacity(.15),
      ),
      onChanged: (value) {},
      onCompleted: (value) {
        GoRouter.of(context).pushNamed(AppRoutes.onBoardingScreen);
      },
    );
  }
}
