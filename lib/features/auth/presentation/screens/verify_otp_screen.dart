import 'package:financename/core/styling/app_styles.dart';
import 'package:financename/core/widgets/custom_rich_text.dart';
import 'package:financename/core/widgets/primary_button_widget.dart';
import 'package:financename/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/widgets/back_button_widget.dart';
import 'widgets/custom_pin_code.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  late TextEditingController pinCodeController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController.dispose();
    super.dispose();
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
                  Text(
                    "OTP Verification",
                    style: AppStyles.primaryHeadingStyle,
                  ),
                  const HeightSpace(10),
                  SizedBox(
                    width: 331.w,
                    child: Text(
                      'Enter the verification code we just sent on your email address.',
                      style: AppStyles.black16w500Style.copyWith(
                        color: const Color(0xff838BA1),
                      ),
                    ),
                  ),
                  const HeightSpace(32),
                  CustomPinCode(pinCodeController: pinCodeController),

                  const HeightSpace(38),
                  PrimaryButtonWidget(
                    buttonText: 'Verify',
                    onPressed: () {
                      GoRouter.of(
                        context,
                      ).pushNamed(AppRoutes.creatNewPasswordScreen);
                    },
                  ),
                  const HeightSpace(357),
                  CustomRichText(
                    text: 'Didn’t received code? ',
                    actionText: 'Resend',
                    onTap: () {},
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
