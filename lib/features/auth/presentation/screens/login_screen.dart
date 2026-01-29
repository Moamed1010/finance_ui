
import 'package:financename/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/styling/app_colors.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/primary_button_widget.dart';
import '../../../../core/widgets/spacing_widget.dart';
import '../../../../core/widgets/back_button_widget.dart';
import 'widgets/custom_or_login_widget.dart';
import '../../../../core/widgets/custom_rich_text.dart';
import 'widgets/social_login_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
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
                      'Welcome back! Again!',
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
                        return 'Password must be at least 8 characters';
                      }
                      return null;
                    },
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: AppColors.greyColor,
                      size: 20.sp,
                    ),
                  ),
                  const HeightSpace(15),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        GoRouter.of(
                          context,
                        ).pushNamed(AppRoutes.forgetPasswordScreen);
                      },
                      child: Text(
                        'Forgot Password?',
                        style: AppStyles.black15BoldStyle.copyWith(
                          color: const Color(0xff6A707C),
                        ),
                      ),
                    ),
                  ),
                  const HeightSpace(30),
                  PrimaryButtonWidget(
                    buttonText: "Login",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // Process data.
                      }
                    },
                  ),
                  const HeightSpace(35),
                  const CustomRegisterOrLoginWidget(text: 'Or Login with'),
                  const HeightSpace(22),
                  const SocialLoginButtons(),
                  const HeightSpace(130),
                  CustomRichText(
                    text: 'Don’t have an account? ',
                    actionText: 'Register Now',
                    onTap: () {
                      GoRouter.of(context).pushNamed(AppRoutes.registerScreen);
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
