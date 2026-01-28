
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/app_routes.dart';
import '../../../core/styling/app_assets.dart';
import '../../../core/styling/app_styles.dart';
import '../../../core/widgets/primary_button_widget.dart';
import '../../../core/widgets/spacing_widget.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const HeightSpace(248),
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    AppAssets.correctIcon,
                    width: 100.w,
                    height: 100.h,
                  ),
                ),
                const HeightSpace(35),
                Text('Password Changed!', style: AppStyles.primaryHeadingStyle),
                const HeightSpace(8),
                SizedBox(
                  width: 250.w,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Your password has been changed successfully.',
                    style: AppStyles.black16w500Style.copyWith(
                      color: const Color(0xff8391A1),
                    ),
                  ),
                ),
                const HeightSpace(40),
                PrimaryButtonWidget(
                  buttonText: 'Back to Login',
                  onPressed: () {
                    GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
