import 'package:financename/core/styling/app_styles.dart';
import 'package:financename/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/back_button_widget.dart';
import 'widgets/card_screen_list_view.dart';
import 'widgets/more_option_button.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          const HeightSpace(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackButtonWidget(),
              Text(
                "All Cards",
                style: AppStyles.black16w500Style.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              MoreOptionButton(),
            ],
          ),
          const HeightSpace(24),
          CardScreenListView(),
        ],
      ),
    );
  }
}
