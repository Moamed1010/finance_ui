
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/app_routes.dart';
import '../../../core/styling/app_styles.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/primary_button_widget.dart';
import '../../../core/widgets/spacing_widget.dart';
import '../../../core/widgets/back_button_widget.dart';
import '../widgets/custom_or_login_widget.dart';
import '../../../core/widgets/custom_rich_text.dart';
import '../widgets/social_login_buttons.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

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
                    width: 331.w,
                    child: Text(
                      'Hello! Register to get started',
                      style: AppStyles.primaryHeadingStyle,
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
                  const HeightSpace(15),
                  CustomTextField(
                    hintText: 'Enter your password',
                    controller: passwordController,
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
                    hintText: 'Confirm your password',
                    controller: confirmPasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please confirm your password';
                      }
                      if (value != passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(30),
                  PrimaryButtonWidget(
                    buttonText: 'Register',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // Process registration
                      }
                    },
                  ),
                  const HeightSpace(35),
                  CustomRegisterOrLoginWidget(text: 'Or Register with'),
                  const HeightSpace(22),
                  const SocialLoginButtons(),
                  const HeightSpace(54),
                  CustomRichText(
                    text: 'Already have an account? ',
                    actionText: 'Login Now',
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
