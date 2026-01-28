
import 'package:flutter/material.dart';

import '../styling/app_colors.dart';
import '../styling/app_styles.dart';

class CustomRichText extends StatelessWidget {
  final String text;
  final String actionText;
  final VoidCallback? onTap;
  const CustomRichText({
    super.key,
    required this.text,
    required this.actionText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: RichText(
          text: TextSpan(
            text: text,
            style: AppStyles.black15BoldStyle,
            children: [
              TextSpan(
                text: actionText,
                style: AppStyles.black15BoldStyle.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
