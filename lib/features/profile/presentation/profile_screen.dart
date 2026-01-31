import 'package:financename/core/widgets/custom_app_bar.dart';
import 'package:financename/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/custom_profile_info_view.dart';
import 'widgets/profile_image.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeightSpace(16),
          CustomAppBar(title: "My Profile", icon: Icons.edit_square),
          const HeightSpace(39),
          Center(child: ProfileImage()),
          const HeightSpace(9),
          CustomProfileInformationView(
            title: 'Full Name',
            content: 'Mohamed Hassan',
          ),
          const HeightSpace(16),
          CustomProfileInformationView(
            title: 'Email',
            content: 'hassanMoamed404@gmail.com',
          ),
          const HeightSpace(16),
          CustomProfileInformationView(
            title: 'Phone Number',
            content: '+020 1033263238',
          ),
          const HeightSpace(16),
          CustomProfileInformationView(title: 'Address', content: 'Giza,Egypt'),
        ],
      ),
    );
  }
}
