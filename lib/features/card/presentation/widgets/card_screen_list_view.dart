
import 'package:flutter/material.dart';

import '../../../../core/styling/app_colors.dart';
import '../../../../core/widgets/spacing_widget.dart';
import 'card_screen_list_view_item.dart';

class CardScreenListView extends StatelessWidget {
  const CardScreenListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const HeightSpace(2),
          CardScreenListViewItem(
            balance: 3689,
            cardNumber: '**** 3232',
            color: AppColors.primaryColor,
            cardType: 'X-card',
            date: '20/9',
          ),
          CardScreenListViewItem(
            balance: 59840,
            cardNumber: '**** 7842',
            color: Color(0xff4151A6),
            cardType: 'X-card',
            date: '12/4',
          ),
        ],
      ),
    );
  }
}
