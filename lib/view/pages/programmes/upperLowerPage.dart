import 'package:flutter/material.dart';
import 'package:pump_up/view/utils/exerciseCard.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpperLowerPage extends StatelessWidget {
  UpperLowerPage({super.key});
  List upperLower = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: DefaultTabController(
        length: 2,
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
                  child: Center(
                      child: TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: Duration(milliseconds: 500),
                    builder: (context, value, child) {
                      return Opacity(
                        opacity: value,
                        child: Text(
                          "Upper-Lower Workout Plan",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Arimo",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      );
                    },
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 10.r,
            ),
            TabBar(
                indicator: BoxDecoration(
                    color: Color(0xFF8CEF0D),
                    borderRadius: BorderRadius.circular(20)),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding:
                    EdgeInsets.only(left: 55, right: 55, top: 7, bottom: 7),
                dividerHeight: 0,
                labelColor: Colors.black,
                labelStyle: TextStyle(
                    fontFamily: "Arimo",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
                tabs: [
                  Tab(
                    text: "Upper",
                  ),
                  Tab(
                    text: "Lower",
                  )
                ]),
            SizedBox(
                height: 700.r,
                child: TabBarView(children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        ExerciseCard(
                            tag: "UP_Low",
                            image:
                                "assets/exercises/chest/Bench_press-clip-.png",
                            title: "Bench Press . Barbell",
                            sets: "4 sets x 8-12 reps",
                            key_num: 16),
                        ExerciseCard(
                            tag: "UP_Low",
                            image:
                                "assets/exercises/back/barbell rowing_clip.png",
                            title: "Bent Over Rows . Barbell",
                            sets: "4 sets x 8-12 reps",
                            key_num: 17),
                        ExerciseCard(
                            tag: "UP_Low",
                            image:
                                "assets/exercises/shoulders/Seated military press_clip.png",
                            title: "Seated Military Press . Dumbell",
                            sets: "4 sets x 10-15 reps",
                            key_num: 18),
                        ExerciseCard(
                            tag: "UP_Low",
                            image:
                                "assets/exercises/back/lat pull down_clip.png",
                            title: "Lat Pull Down . Machine",
                            sets: "4 sets x 8-12 reps",
                            key_num: 19),
                        ExerciseCard(
                            tag: "UP_Low",
                            image:
                                "assets/exercises/shoulders/lateral raises_clip.png",
                            title: "Lateral Raises . Dumbell",
                            sets: "4 sets x 10-15 reps",
                            key_num: 20),
                        ExerciseCard(
                            tag: "UP_Low",
                            image:
                                "assets/exercises/biceps/EZ barbell biceps curl_clip.png",
                            title: "Biceps Curl . EZ Barbell",
                            sets: "4 sets x 8-12 reps",
                            key_num: 21),
                        ExerciseCard(
                            tag: "UP_Low",
                            image:
                                "assets/exercises/triceps/triceps push down_clip.png",
                            title: "Triceps Push Down . Machine",
                            sets: "4 sets x 8-12 reps",
                            key_num: 22),
                        SizedBox(
                          height: 35.r,
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        ExerciseCard(
                            tag: "UP_Low",
                            image: "assets/exercises/legs/squat_clip.png",
                            title: "Squat . Barbell",
                            sets: "4 sets x 8-12 reps",
                            key_num: 16),
                        ExerciseCard(
                            tag: "UP_Low",
                            image: "assets/exercises/legs/Dead Lift_clip.png",
                            title: "Deadlift . Barbell",
                            sets: "4 sets x 8-12 reps",
                            key_num: 17),
                        ExerciseCard(
                            tag: "UP_Low",
                            image: "assets/exercises/legs/leg press_clip.png",
                            title: "Leg Press . Machine",
                            sets: "4 sets x 8-12 reps",
                            key_num: 18),
                        ExerciseCard(
                            tag: "UP_Low",
                            image:
                                "assets/exercises/legs/hamstrings curl_clip.png",
                            title: "Leg Curls . Machine",
                            sets: "4 sets x 8-12 reps",
                            key_num: 19),
                        ExerciseCard(
                            tag: "UP_Low",
                            image: "assets/exercises/legs/lungs_clip.png",
                            title: "Lungs . Dumbell",
                            sets: "4 sets x 8-12 reps",
                            key_num: 20),
                        ExerciseCard(
                            tag: "UP_Low",
                            image:
                                "assets/exercises/legs/calf raise machine_clip.png",
                            title: "Calf Raises . Machine",
                            sets: "4 sets x 10-15 reps",
                            key_num: 21),
                        SizedBox(
                          height: 35.r,
                        )
                      ],
                    ),
                  ),
                ]))
          ],
        ),
      ),
    );
  }
}
