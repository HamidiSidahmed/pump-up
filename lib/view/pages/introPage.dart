import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pump_up/controller/viewController.dart';
import 'package:pump_up/view/pages/intropages/firestIntroPage.dart';
import 'package:pump_up/view/pages/intropages/fourthIntroPage.dart';
import 'package:pump_up/view/pages/intropages/secondIntroPage.dart';
import 'package:pump_up/view/pages/intropages/thirdIntroPage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends GetView {
  IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    ViewController view = Get.put(ViewController());
    final pageController = PageController(initialPage: 0);
    int currentIndex = 0;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: [FirstIntroPage(), SecondIntroPage(), ThirdIntroPage()],
          ),
          Positioned(
            top: 670.r,
            child: Container(
              width: 1.sw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    effect: ExpandingDotsEffect(
                        activeDotColor: Color(0xFF8CEF0D),
                        dotHeight: 11,
                        dotWidth: 11,
                        spacing: 15),
                    controller: pageController,
                    count: 3,
                    onDotClicked: (index) {
                      currentIndex = index;
                    },
                  ),
                  InkWell(
                    onTap: () {
                      if (view.currentIndex.value % 3 == 2) {
                        Get.to(() => FourthIntroPage(),
                            transition: Transition.rightToLeftWithFade);
                      } else {
                        view.currentIndex.value += 1;
                        pageController.animateToPage(
                            view.currentIndex.value % 3,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 40.r),
                      width: 150.w,
                      height: 45.h,
                      child: Center(child: Obx(
                        () {
                          return (view.currentIndex.value % 3) == 2
                              ? Text(
                                  "Get Started",
                                  style: TextStyle(
                                      fontFamily: "Arimo",
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold),
                                )
                              : Text(
                                  "Next",
                                  style: TextStyle(
                                      fontFamily: "Arimo",
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold),
                                );
                        },
                      )),
                      decoration: BoxDecoration(
                          color: Color(0xFF8CEF0D),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
