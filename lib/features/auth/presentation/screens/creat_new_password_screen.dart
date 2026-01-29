import 'package:financename/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/app_routes.dart';
import '../../../../core/styling/app_styles.dart';
import '../../../../core/widgets/primary_button_widget.dart';
import '../../../../core/widgets/spacing_widget.dart';

class CreatNewPasswordScreen extends StatelessWidget {
  const CreatNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController newPasswordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeightSpace(12),
                  const BackButton(),
                  const HeightSpace(28),
                  SizedBox(
                    width: 331.w,
                    child: Text(
                      'Create new password',
                      style: AppStyles.primaryHeadingStyle,
                    ),
                  ),
                  const HeightSpace(10),
                  SizedBox(
                    width: 331.w,
                    child: Text(
                      'Your new password must be unique from those previously used.',
                      style: AppStyles.black16w500Style.copyWith(
                        color: const Color(0xff8391A1),
                      ),
                    ),
                  ),
                  const HeightSpace(32),
                  CustomTextField(
                    hintText: 'New password',
                    controller: newPasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 8 characters long';
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(15),
                  CustomTextField(
                    hintText: 'Confirm password',
                    controller: confirmPasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please confirm your password';
                      }
                      if (value != newPasswordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(38),
                  PrimaryButtonWidget(
                    buttonText: 'Reset Password',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        GoRouter.of(
                          context,
                        ).pushNamed(AppRoutes.passwordChangedScreen);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
