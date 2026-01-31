import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:financename/core/styling/app_colors.dart';
import 'package:financename/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'card_item.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int currentIndrxPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [
            CardItem(
              color: AppColors.primaryColor,
              cardNumber: '**** 3434',
              balance: 23400,
              cardType: "X card",
              date: '1/6',
            ),
            CardItem(
              color: Color(0xff4151A6),
              cardNumber: '**** 4545',
              balance: 3209,
              cardType: "M-card",
              date: '25/12',
            ),
            CardItem(
              color: AppColors.secondaryColor,
              cardNumber: '**** 6598',
              balance: 5240,
              cardType: "V-card",
              date: '6/2',
            ),
          ],
          options: CarouselOptions(
            height: 280.h,
            padEnds: false,
            viewportFraction: .7,
            enlargeCenterPage: true,
            enlargeFactor: .25,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndrxPage = index;
              });
            },
          ),
        ),
        const HeightSpace(16),
        DotsIndicator(
          dotsCount: 3,
          position: currentIndrxPage.toDouble(),
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            spacing: EdgeInsets.symmetric(horizontal: 4),
            color: Color(0xffE3E9ED),
            activeColor: AppColors.primaryColor,
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
