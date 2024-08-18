import 'package:flutter/material.dart';
import 'package:pump_up/view/utils/exerciseCard.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ShoulderPage extends StatelessWidget {
  const ShoulderPage({super.key});

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
                          "Shoulder Workout",
                          style: TextStyle(
                              fontFamily: "Arimo",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp),
                        ),
                      ),
                      Text(
                        "7 exercises",
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
                      tag: "exo2",
                      child: Image.asset("assets/muscle_images/shoulder.png")),
                )
              ],
            ),
            ExerciseCard(
              tag: "shoulder",
              image:
                  "assets/exercises/shoulders/Seated military press_clip.png",
              title: "Seated Military Press . Dumbell",
              sets: "4 Sets x 15 Reps",
              key_num: 0,
            ),
            ExerciseCard(
              tag: "shoulder",
              image: "assets/exercises/shoulders/Dumbbell front raise_clip.png",
              title: "Front Raise . Dumbell ",
              sets: "4 Sets x 15 Reps",
              key_num: 1,
            ),
            ExerciseCard(
              tag: "shoulder",
              image: "assets/exercises/shoulders/lateral raises_clip.png",
              title: "Lateral Raises . Dumbell",
              sets: "4 Sets x 15 Reps",
              key_num: 2,
            ),
            ExerciseCard(
              tag: "shoulder",
              image: "assets/exercises/shoulders/lateral raises cable_clip.png",
              title: "Lateral Raises . Cable",
              sets: "4 Sets x 15 Reps",
              key_num: 3,
            ),
            ExerciseCard(
              tag: "shoulder",
              image: "assets/exercises/shoulders/upright row barbell_clip.png",
              title: "Upright Row . Barbell",
              sets: "4 Sets x 15 Reps",
              key_num: 4,
            ),
            ExerciseCard(
              tag: "shoulder",
              image: "assets/exercises/shoulders/Reverse fly_clip.png",
              title: "Reverse Fly . Dumbell",
              sets: "4 Sets x 15 Reps",
              key_num: 5,
            ),
            ExerciseCard(
              tag: "shoulder",
              image: "assets/exercises/shoulders/Standing face pull_clip.png",
              title: "Standing Face Pull . Cable",
              sets: "4 Sets x 15 Reps",
              key_num: 6,
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
