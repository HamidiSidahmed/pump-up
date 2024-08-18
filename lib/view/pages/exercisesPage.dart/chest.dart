import 'package:flutter/material.dart';
import 'package:pump_up/view/utils/exerciseCard.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pump_up/view/utils/muscleCard.dart';
import 'package:get/get.dart';

class ChestPage extends StatelessWidget {
  const ChestPage({super.key});

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
                          "Chest Workout",
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
                  margin: EdgeInsets.only(left: 110.r),
                  width: 70.r,
                  child: Hero(
                      tag: "exo0",
                      child: Image.asset("assets/muscle_images/chest.png")),
                )
              ],
            ),
            ExerciseCard(
              tag: "chest",
              image: "assets/exercises/chest/Bench_press-clip-.png",
              title: "Flat Bench Press . Barbell",
              sets: "4 Sets x 12 Reps",
              key_num: 0,
            ),
            ExerciseCard(
              tag: "chest",
              image: "assets/exercises/chest/machine_chest_press_clip.png",
              title: "Chest Press . Machine ",
              sets: "4 Sets x 12 Reps",
              key_num: 1,
            ),
            ExerciseCard(
              tag: "chest",
              image: "assets/exercises/chest/cable_fly_machine_clip.png",
              title: "Chest Fly . Machine",
              sets: "4 Sets x 12 Reps",
              key_num: 2,
            ),
            ExerciseCard(
              tag: "chest",
              image: "assets/exercises/chest/incline_Dumbbell_press_clip.png",
              title: "Incline Bench Press . Dumbbell",
              sets: "4 Sets x 12 Reps",
              key_num: 3,
            ),
            ExerciseCard(
              tag: "chest",
              image: "assets/exercises/chest/incline_chest_press_clip.png",
              title: "Incline Bench Press . Machine",
              sets: "4 Sets x 12 Reps",
              key_num: 4,
            ),
            ExerciseCard(
              tag: "chest",
              image: "assets/exercises/chest/Cable_Standing_Fly_clip-.png",
              title: "Chest Fly . Cable",
              sets: "4 Sets x 12 Reps",
              key_num: 5,
            ),
            ExerciseCard(
              tag: "chest",
              image: "assets/exercises/chest/Dumbbell_fly-.png",
              title: "Chest Fly . Dumbbell",
              sets: "4 Sets x 12 Reps",
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
