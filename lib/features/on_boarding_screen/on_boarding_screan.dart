
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/routing/app_routes.dart';
import '../../core/styling/app_assets.dart';
import '../../core/styling/app_styles.dart';
import '../../core/widgets/primary_button_widget.dart';
import '../../core/widgets/primary_outline_button_widget.dart';
import '../../core/widgets/spacing_widget.dart';

class OnBoardingScrean extends StatelessWidget {
  const OnBoardingScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                AppAssets.onBoard,
                width: 375.w,
                height: 530.h,
                fit: BoxFit.cover,
              ),
              const HeightSpace(21),
              PrimaryButtonWidget(
                buttonText: "Login",
                onPressed: () {
                  GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                },
                buttonWidth: 331.w,
                buttonHeight: 56.h,
              ),
              const HeightSpace(15),
              PrimaryOutlineButtonWidget(
                onPressed: () {
                  GoRouter.of(context).pushNamed(AppRoutes.registerScreen);
                },
                buttonText: "Register",
                buttonHeight: 56.h,
                buttonWidth: 331.w,
              ),
              const HeightSpace(46),
              Text(
                "Continue as a guest",
                style: AppStyles.black15BoldStyle.copyWith(
                  decoration: TextDecoration.underline,
                  color: const Color(0xff202955),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
