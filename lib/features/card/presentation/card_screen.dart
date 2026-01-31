import 'package:financename/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/custom_app_bar.dart';
import 'widgets/card_screen_list_view.dart';


class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          const HeightSpace(16),
          CustomAppBar(title: 'All Cards',icon: Icons.more_horiz,),
          const HeightSpace(24),
          CardScreenListView(),
        ],
      ),
    );
  }
}
