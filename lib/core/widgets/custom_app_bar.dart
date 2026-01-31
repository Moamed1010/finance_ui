import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/card/presentation/widgets/more_option_button.dart';
import '../styling/app_styles.dart';
import 'back_button_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BackButtonWidget(),
        Text(
          title,
          style: AppStyles.black16w500Style.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        CustomAppBarrIcon(icon: icon),
      ],
    );
  }
}
