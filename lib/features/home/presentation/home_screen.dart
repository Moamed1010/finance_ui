import 'package:financename/core/widgets/spacing_widget.dart';
import 'package:financename/features/home/presentation/widgets/top_profile_notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/carousel_widget.dart';
import 'widgets/home_screen_gird_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          const HeightSpace(18),
          TopProfileNotificationWidget(),
          const HeightSpace(18),
          CarouselWidget(),
          const HeightSpace(24),
          HomeScreenGridView(),
        ],
      ),
    );
  }
}
