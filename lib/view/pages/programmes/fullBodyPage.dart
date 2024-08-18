import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pump_up/view/utils/exerciseCard.dart';

class FullBodyPage extends StatelessWidget {
  const FullBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: 2,
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 20.r),
                      width: 23.r,
                      height: 23.r,
                      child: Image.asset("assets/icons/right-arrow.png"),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 55.r),
                  color: Colors.black,
                  height: 50,
                  width: 200,
                  child: Center(
                      child: TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: Duration(milliseconds: 500),
                    builder: (context, value, child) {
                      return Opacity(
                        opacity: value,
                        child: Text(
                          "Full-Body Workout Plan",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Arimo",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      );
                    },
                  )
                  ),
                ),
              ],
            ),
            ExerciseCard(
                tag: "Full",
                image: "assets/exercises/legs/squat_clip.png",
                title: "Squat . Barbell",
                sets: "3 sets x 8-12 reps",
                key_num: 10),
            ExerciseCard(
                tag: "Full",
                image: "assets/exercises/chest/Bench_press-clip-.png",
                title: "Bench Press . Barbell",
                sets: "3 sets x 8-12 reps",
                key_num: 11),
            ExerciseCard(
                tag: "Full",
                image: "assets/exercises/back/barbell rowing_clip.png",
                title: "Bent Over Rows . Barbell",
                sets: "3 sets x 8-12 reps",
                key_num: 12),
            ExerciseCard(
                tag: "Full",
                image: "assets/exercises/shoulders/lateral raises_clip.png",
                title: "Lateral Raises . Dumbell",
                sets: "4 sets x 10-15 reps",
                key_num: 13),
            ExerciseCard(
                tag: "Full",
                image: "assets/exercises/legs/Dead Lift_clip.png",
                title: "Deadlift . Dumbell",
                sets: "3 sets x 6-10 reps",
                key_num: 14),
            ExerciseCard(
                tag: "Full",
                image: "assets/exercises/abs/plank.png",
                title: "Plank",
                sets: "3 sets x 60 seconds",
                key_num: 43),
            SizedBox(
              height: 35.r,
            )
          ],
        ),
      ),
    );
  }
}
