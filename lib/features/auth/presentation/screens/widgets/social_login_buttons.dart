
import 'package:flutter/material.dart';

import '../../../../../core/styling/app_assets.dart';
import 'custom_icon_button.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(iconPath: AppAssets.facebookIcon, onPressed: () {}),
        CustomIconButton(iconPath: AppAssets.googleIcon, onPressed: () {}),
        CustomIconButton(iconPath: AppAssets.appleIcon, onPressed: () {}),
      ],
    );
  }
}
