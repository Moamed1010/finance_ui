import 'package:financename/core/widgets/custom_app_bar.dart';
import 'package:financename/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/chart.dart';
import 'widgets/in_or_out_come.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({super.key});

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const HeightSpace(16),
          CustomAppBar(title: 'Reload', icon: Icons.more_horiz),
          const HeightSpace(24),
          Chart(),
          const HeightSpace(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomInorOutComeItem(
                icon: Icons.move_to_inbox_rounded,
                title: "Income",
                value: 15000,
              ),
              CustomInorOutComeItem(
                icon: Icons.outbox_outlined,
                title: "Outcome",
                value: 35000,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
