import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pump_up/view/utils/exerciseCard.dart';

class ForearmsPage extends StatelessWidget {
  const ForearmsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () => Get.back(),
                  child:RotatedBox(
                    quarterTurns: 2,
                    child: Container(
                      margin: EdgeInsets.only(right: 20.r),
                      width: 25.r,
                      height: 25.r,
                      child: Image.asset("assets/icons/right-arrow.png"),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Forearms Workout",
                          style: TextStyle(
                              fontFamily: "Arimo",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp),
                        ),
                      ),
                      Text(
                        "2 exercises",
                        style: TextStyle(
                            fontFamily: "Arimo",
                            color: Colors.white.withOpacity(0.8)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 85.r),
                  width: 70.r,
                  child: Hero(
                      tag: "exo5",
                      child: Image.asset("assets/muscle_images/forearme.png")),
                )
              ],
            ),
            ExerciseCard(
              tag: "forearms",
              image: "assets/exercises/forearms/Palms-down wrist curl_clip.png",
              title: "Palmsd Down Wrist Curl . Barbell",
              sets: "4 Sets x 12 Reps",
              key_num: 0,
            ),
            ExerciseCard(
              tag: "forearms",
              image:
                  "assets/exercises/forearms/Palms-up wrist curl barbell_clip.png",
              title: "Palms Up Wrist Curl . Barbell ",
              sets: "4 Sets x 12 Reps",
              key_num: 1,
            ),
            SizedBox(
              height: 35,
            )
          ],
        ),
      ),
    );
  }
}
