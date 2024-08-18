import 'package:flutter/material.dart';
import '../../utils/exerciseCard.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LegPage extends StatelessWidget {
  const LegPage({super.key});

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
                  child :RotatedBox(
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
                          "Leg Workout",
                          style: TextStyle(
                              fontFamily: "Arimo",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp),
                        ),
                      ),
                      Text(
                        "10 exercises",
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
                      tag: "exo6",
                      child: Image.asset("assets/muscle_images/legs.png")),
                )
              ],
            ),
            ExerciseCard(
              tag: "legs",
              image: "assets/exercises/legs/squat_clip.png",
              title: "Squat . Barbell",
              sets: "4 Sets x 15 Reps",
              key_num: 0,
            ),
            ExerciseCard(
              tag: "legs",
              image: "assets/exercises/legs/Leg_Extensions_clip.png",
              title: "Legs Extension . Machine",
              sets: "4 Sets x 15 Reps",
              key_num: 1,
            ),
            ExerciseCard(
              tag: "legs",
              image: "assets/exercises/legs/leg press_clip.png",
              title: "Leg Press . Machine",
              sets: "4 Sets x 15 Reps",
              key_num: 2,
            ),
            ExerciseCard(
              tag: "legs",
              image: "assets/exercises/legs/split_squat_clip.png",
              title: "Split Squat . Dumbell",
              sets: "4 Sets x 15 Reps",
              key_num: 3,
            ),
            ExerciseCard(
              tag: "legs",
              image: "assets/exercises/legs/sumo squat_clip.png",
              title: "Sumo Squat . Dumbell",
              sets: "4 Sets x 15 Reps",
              key_num: 4,
            ),
            ExerciseCard(
              tag: "legs",
              image: "assets/exercises/legs/lungs_clip.png",
              title: "Lungs . Dumbell",
              sets: "4 Sets x 15 Reps",
              key_num: 5,
            ),
            ExerciseCard(
              tag: "legs",
              image: "assets/exercises/legs/calf raise machine_clip.png",
              title: "Calf Raise . Machine",
              sets: "4 Sets x 15 Reps",
              key_num: 6,
            ),
            ExerciseCard(
              tag: "legs",
              image: "assets/exercises/legs/Seated Calf Raise_clip.png",
              title: "Seated Calf Raise . Machine",
              sets: "4 Sets x 15 Reps",
              key_num: 7,
            ),
            ExerciseCard(
              tag: "legs",
              image: "assets/exercises/legs/hamstrings curl_clip.png",
              title: "Hamstrings Curl . Machine",
              sets: "4 Sets x 15 Reps",
              key_num: 8,
            ),
            ExerciseCard(
              tag: "legs",
              image: "assets/exercises/legs/Dead Lift_clip.png",
              title: "Dead Lift . Barbell",
              sets: "4 Sets x 15 Reps",
              key_num: 9,
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
