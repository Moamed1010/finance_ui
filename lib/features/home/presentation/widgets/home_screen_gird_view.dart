
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_grid_view_item.dart';

class HomeScreenGridView extends StatelessWidget {
  const HomeScreenGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.sp,
          crossAxisSpacing: 16.sp,
        ),
        children: [
          GridViewItem(
            title: "Send money",
            description: 'Take acc to acc',
            icon: Icons.send,
          ),
          GridViewItem(
            title: "Pay the bill",
            description: 'Lorem ipsum',
            icon: Icons.wallet,
          ),GridViewItem(
            title: "Request",
            description: 'Lorem ipsum',
            icon: Icons.send,
          ),GridViewItem(
            title: "Contact",
            description: 'Lorem ipsum',
            icon: Icons.people,
          ),
        ],
      ),
    );
  }
}
