import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pump_up/controller/viewController.dart';

class BottomBar extends StatelessWidget {
  PageController controller;
  BottomBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Container(
          margin: EdgeInsets.only(bottom: 25, left: 25, right: 25).r,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: BottomNavigationBar(
                currentIndex: ViewController.currentBottomIndex.value,
                onTap: (value) {
                  ViewController.currentBottomIndex.value = value;
                  controller.animateToPage(value,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                },
                fixedColor: Color(0xFF8CEF0D),
                showUnselectedLabels: false,
                selectedLabelStyle:
                    TextStyle(fontSize: 14.sp, fontFamily: "Arimo"),
                showSelectedLabels: true,
                backgroundColor: Color(0xFF232323),
                items: [
                  BottomNavigationBarItem(
                      icon: Container(
                        width: 20.r,
                        height: 20.r,
                        child: Image.asset("assets/icons/home_white.png"),
                      ),
                      activeIcon: Container(
                        width: 20.r,
                        height: 20.r,
                        child: Image.asset("assets/icons/home.png"),
                      ),
                      label: "Home"),
                  BottomNavigationBarItem(
                    icon: Container(
                      width: 25.r,
                      height: 25.r,
                      child: Image.asset("assets/icons/weight_white.png"),
                    ),
                    activeIcon: Container(
                      width: 25.r,
                      height: 25.r,
                      child: Image.asset("assets/icons/weight.png"),
                    ),
                    label: "Track",
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      width: 25.r,
                      height: 25.r,
                      child: Image.asset("assets/icons/plans_white.png"),
                    ),
                    activeIcon: Container(
                      width: 25.r,
                      height: 25.r,
                      child: Image.asset("assets/icons/plans.png"),
                    ),
                    label: "Plans",
                  ),
                ]),
          ),
        );
      },
    );
  }
}
