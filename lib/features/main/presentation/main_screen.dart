import 'package:financename/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndx = 0;
  List<Widget> screens = [
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.greenAccent,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.deepPurpleAccent,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[currentIndx],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndx,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.blueGrey,
          elevation: 1,
          onTap: (value) {
            setState(() {
              currentIndx = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart, size: 30),
              label: 'Statistic',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 48.sp,
                height: 48.sp,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(Icons.add, color: Colors.white, size: 30.sp),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet, size: 30),
              label: 'My card',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
