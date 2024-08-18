import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pump_up/view/utils/exerciseCard.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TricepsPage extends StatelessWidget {
  const TricepsPage({super.key});

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
                  child: RotatedBox(
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
                          "Triceps Workout",
                          style: TextStyle(
                              fontFamily: "Arimo",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp),
                        ),
                      ),
                      Text(
                        "6 exercises",
                        style: TextStyle(
                            fontFamily: "Arimo",
                            color: Colors.white.withOpacity(0.8)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 110.r),
                  width: 70.r,
                  child: Hero(
                      tag: "exo4",
                      child: Image.asset("assets/muscle_images/chest.png")),
                )
              ],
            ),
            ExerciseCard(
              tag: "triceps",
              image: "assets/exercises/triceps/triceps push down_clip.png",
              title: "Triceps Push Down",
              sets: "4 Sets x 12 Reps",
              key_num: 0,
            ),
            ExerciseCard(
              tag: "triceps",
              image: "assets/exercises/triceps/triceps push down rope_clip.png",
              title: "Triceps Push Down . Rope ",
              sets: "4 Sets x 12 Reps",
              key_num: 1,
            ),
            ExerciseCard(
              tag: "triceps",
              image: "assets/exercises/triceps/Dumbbell Skullcrushers_clip.png",
              title: "Skull Crusher . Dumbell",
              sets: "4 Sets x 12 Reps",
              key_num: 2,
            ),
            ExerciseCard(
              tag: "triceps",
              image: "assets/exercises/triceps/Barbell Skullcrushers_clip.png",
              title: "Skull Crusher . Barbell",
              sets: "4 Sets x 12 Reps",
              key_num: 3,
            ),
            ExerciseCard(
              tag: "triceps",
              image:
                  "assets/exercises/triceps/triceps behind head-dumbell_clip.png",
              title: "Triceps Behind Head . Dumbell",
              sets: "4 Sets x 12 Reps",
              key_num: 4,
            ),
            ExerciseCard(
              tag: "triceps",
              image: "assets/exercises/triceps/Triceps Kickback_clip.png",
              title: "Triceps Kickback . Dumbell",
              sets: "4 Sets x 12 Reps",
              key_num: 5,
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
