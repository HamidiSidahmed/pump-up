import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pump_up/view/pages/exercisesPage.dart/chest.dart';
import 'package:pump_up/view/utils/muscleCard.dart';
import 'package:get/get.dart';

class FirstHomePage extends StatelessWidget {
  const FirstHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 100.h,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.r),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  maxRadius: 32.r,
                  backgroundImage: AssetImage("assets/icons/profile.png"),
                ),
              ),
              Container(
                child: Text(
                  "Hi , Monster",
                  style: TextStyle(
                      fontFamily: "Arimo",
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.5.sp),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 160.r),
                width: 25.w,
                child: Image.asset("assets/icons/bell.png"),
              )
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 35.w,
              child: Image.asset("assets/icons/biceps.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 18, left: 5, right: 5).r,
              child: Text(
                "Ready to build some muscles",
                style: TextStyle(
                    color: Colors.white, fontSize: 15.sp, fontFamily: "Arimo"),
              ),
            ),
            SizedBox(
              width: 35.w,
              child: Image.asset("assets/icons/biceps_flip.png"),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                InkWell(
                  onTap: () => Get.to(() => ChestPage()),
                  child: ExoCard(
                    image: "assets/muscle_images/chest.png",
                    title: "Chest",
                    key_num: 0,
                  ),
                ),
                ExoCard(
                  image: "assets/muscle_images/shoulder.png",
                  title: "Shoulder",
                  key_num: 2,
                ),
                ExoCard(
                  image: "assets/muscle_images/triceps.png",
                  title: "Triceps",
                  key_num: 4,
                ),
                ExoCard(
                  image: "assets/muscle_images/legs.png",
                  title: "Legs",
                  key_num: 6,
                )
              ],
            ),
            Column(
              children: [
                ExoCard(
                    image: "assets/muscle_images/back -full.png",
                    title: "Back",
                    key_num: 1),
                ExoCard(
                    image: "assets/muscle_images/biceps.png",
                    title: "Biceps",
                    key_num: 3),
                ExoCard(
                  image: "assets/muscle_images/forearme.png",
                  title: "Forearm",
                  key_num: 5,
                ),
                ExoCard(
                  image: "assets/muscle_images/abs.png",
                  title: "Abs",
                  key_num: 7,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
