
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/app_routes.dart';
import '../../../../core/styling/app_styles.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/primary_button_widget.dart';
import '../../../../core/widgets/spacing_widget.dart';
import '../../../../core/widgets/back_button_widget.dart';
import '../../../../core/widgets/custom_rich_text.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();

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
                  const BackButtonWidget(),
                  const HeightSpace(28),
                  SizedBox(
                    width: 280.w,
                    child: Text(
                      'Forget Password?',
                      style: AppStyles.primaryHeadingStyle,
                    ),
                  ),
                  SizedBox(
                    width: 300.w,
                    child: Text(
                      'Don’t worry! It occurs. Please enter the email address linked with your account.',
                      style: AppStyles.black16w500Style.copyWith(
                        color: Color(0xff8391A1),
                      ),
                    ),
                  ),
                  const HeightSpace(32),
                  CustomTextField(
                    hintText: 'Enter your email',
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(38),
                  PrimaryButtonWidget(
                    buttonText: 'Send Code',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        GoRouter.of(context)
                            .pushNamed(AppRoutes.verifyOtpScreen);
                      }
                    },
                  ),
                  const HeightSpace(361),
                  CustomRichText(
                    text: 'Remember Password? ',
                    actionText: 'Login',
                    onTap: () {
                      GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
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
