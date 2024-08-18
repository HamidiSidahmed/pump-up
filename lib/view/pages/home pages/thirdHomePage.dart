import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pump_up/view/pages/programmes/arnoldSplit.dart';
import 'package:pump_up/view/pages/programmes/fullBodyPage.dart';
import 'package:pump_up/view/pages/programmes/pushPullLeg.dart';
import 'package:pump_up/view/pages/programmes/upperLowerPage.dart';
import 'package:pump_up/view/utils/muscleCard.dart';
import 'package:pump_up/view/utils/planCard.dart';
import 'package:get/get.dart';

class Thirdhomepage extends StatelessWidget {
  Thirdhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10).r,
            width: 1.sw,
            height: 30.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "S",
                  style: TextStyle(
                      color: Color(0xFF646464),
                      fontFamily: "Arimo",
                      fontSize: 14.sp),
                ),
                Text(
                  "M",
                  style: TextStyle(color: Color(0xFF646464), fontSize: 14.sp),
                ),
                Text(
                  "T",
                  style: TextStyle(color: Color(0xFF646464), fontSize: 14.sp),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF232323)),
                  height: 30.h,
                  width: 116.w,
                  child: Center(
                    child: Text(
                      "Wendnesday",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Text(
                  "T",
                  style: TextStyle(color: Color(0xFF646464), fontSize: 14.sp),
                ),
                Text(
                  "F",
                  style: TextStyle(color: Color(0xFF646464), fontSize: 14.sp),
                ),
                Text(
                  "S",
                  style: TextStyle(color: Color(0xFF646464), fontSize: 14.sp),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => FullBodyPage());
            },
            child: Container(
              height: 200.h,
              child: Plancard(
                image: "assets/backgrounds/N06.png",
                description:
                    "A full-body workout is designed to train all major muscle groups in a single session.",
                title: " Full-Body ",
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => UpperLowerPage());
            },
            child: Container(
              height: 200.h,
              child: Plancard(
                image: "assets/backgrounds/N07.png",
                description:
                    "An upper/lower split workout divides training sessions into upper body and lower body workouts.",
                title: " Upper-Lower ",
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => PPLPage());
            },
            child: Container(
              height: 200.h,
              child: Plancard(
                image: "assets/backgrounds/N08.png",
                description:
                    "This split  divides training sessions into three categories: pushing,pulling, and leg exercises.",
                title: " Push-Pull-Leg ",
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => ArnoldSplitPage());
            },
            child: Container(
              height: 200.h,
              child: Plancard(
                image: "assets/backgrounds/N09.png",
                description:
                    "typically involving six workout days per week, with each muscle group being trained multiple times.",
                title: " Arnold Split ",
              ),
            ),
          )
        ],
      ),
    );
  }
}
