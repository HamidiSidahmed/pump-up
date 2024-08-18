import 'package:flutter/material.dart';
import 'package:pump_up/view/utils/exerciseCard.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PPLPage extends StatelessWidget {
  const PPLPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: DefaultTabController(
        length: 3,
        child: SingleChildScrollView(
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
                    margin: EdgeInsets.only(left: 70.r),
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
                            "Push-Pull-Leg Workout",
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
                      EdgeInsets.only(left: 25, right: 25, top: 7, bottom: 7),
                  dividerHeight: 0,
                  labelColor: Colors.black,
                  labelStyle: TextStyle(
                      fontFamily: "Arimo",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                  tabs: [
                    Tab(
                      text: "Push",
                    ),
                    Tab(
                      text: "Pull",
                    ),
                    Tab(
                      text: "Leg",
                    ),
                  ]),
              SizedBox(
                height: 700.r,
                child: TabBarView(children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        ExerciseCard(
                            tag: "ppl",
                            image:
                                "assets/exercises/chest/Bench_press-clip-.png",
                            title: "Bench Press . Barbell",
                            sets: "4 sets x 8-12 reps",
                            key_num: 10),
                        ExerciseCard(
                            tag: "ppl",
                            image:
                                "assets/exercises/chest/incline_chest_press_clip.png",
                            title: "Incline Chest Press . Machine",
                            sets: "4 sets x 8-12 reps",
                            key_num: 11),
                        ExerciseCard(
                            tag: "ppl",
                            image: "assets/exercises/chest/Dumbbell_fly-.png",
                            title: "Chest Fly . Dumbell",
                            sets: "4 sets x 8-12 reps",
                            key_num: 12),
                        ExerciseCard(
                            tag: "ppl",
                            image:
                                "assets/exercises/shoulders/Seated military press_clip.png",
                            title: "Seated Military Press . Dumbell",
                            sets: "4 sets x 10-15 reps",
                            key_num: 13),
                        ExerciseCard(
                            tag: "ppl",
                            image:
                                "assets/exercises/shoulders/lateral raises_clip.png",
                            title: "Lateral . Raises",
                            sets: "4 sets x 10-15 reps",
                            key_num: 14),
                        ExerciseCard(
                            tag: "ppl",
                            image:
                                "assets/exercises/triceps/triceps push down_clip.png",
                            title: "Triceps Push Down . Machine",
                            sets: "4 sets x 8-12 reps",
                            key_num: 15),
                        ExerciseCard(
                            tag: "ppl",
                            image:
                                "assets/exercises/triceps/Dumbbell Skullcrushers_clip.png",
                            title: "Skull Crushers . Dumbell",
                            sets: "4 sets x 8-12 reps",
                            key_num: 16),
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
                            tag: "ppl",
                            image:
                                "assets/exercises/back/barbell rowing_clip.png",
                            title: "Bent Over Rows . Barbell",
                            sets: "4 sets x 8-12 reps",
                            key_num: 10),
                        ExerciseCard(
                            tag: "ppl",
                            image:
                                "assets/exercises/back/lat pull down_clip.png",
                            title: "Lat Pull Down . Machine",
                            sets: "4 sets x 8-12 reps",
                            key_num: 11),
                        ExerciseCard(
                            tag: "ppl",
                            image:
                                "assets/exercises/back/one hand dumbbell rowing_clip.png",
                            title: "One Hand Rowing . Dumbell",
                            sets: "4 sets x 8-12 reps",
                            key_num: 12),
                        ExerciseCard(
                            tag: "ppl",
                            image:
                                "assets/exercises/back/Seated Cable Row_clip.png",
                            title: "Seated Cable Row . Dumbell",
                            sets: "4 sets x 8-12 reps",
                            key_num: 13),
                        ExerciseCard(
                            tag: "ppl",
                            image:
                                "assets/exercises/shoulders/Standing face pull_clip.png",
                            title: "Standing Face Pull . Cable",
                            sets: "4 sets x 10-15 reps",
                            key_num: 14),
                        ExerciseCard(
                            tag: "ppl",
                            image:
                                "assets/exercises/biceps/EZ barbell biceps curl_clip.png",
                            title: "Biceps Curl .EZ Barbell",
                            sets: "4 sets x 8-12 reps",
                            key_num: 15),
                        ExerciseCard(
                            tag: "ppl",
                            image:
                                "assets/exercises/biceps/hummer curl_clip.png",
                            title: "Hummer Curl . Dumbell",
                            sets: "4 sets x 8-12 reps",
                            key_num: 16),
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
                            tag: "ppl",
                            image:
                                "assets/exercises/legs/Leg_Extensions_clip.png",
                            title: "Leg Extension . Barbell",
                            sets: "4 sets x 8-12 reps",
                            key_num: 10),
                        ExerciseCard(
                            tag: "ppl",
                            image: "assets/exercises/legs/squat_clip.png",
                            title: "Squat . Barbell",
                            sets: "4 sets x 8-12 reps",
                            key_num: 11),
                        ExerciseCard(
                            tag: "ppl",
                            image: "assets/exercises/legs/leg press_clip.png",
                            title: "Leg Press . Machine",
                            sets: "4 sets x 8-12 reps",
                            key_num: 12),
                        ExerciseCard(
                            tag: "ppl",
                            image:
                                "assets/exercises/legs/hamstrings curl_clip.png",
                            title: "Hamstring Curl . Machine",
                            sets: "4 sets x 8-12 reps",
                            key_num: 13),
                        ExerciseCard(
                            tag: "ppl",
                            image:
                                "assets/exercises/legs/calf raise machine_clip.png",
                            title: "Calf Raises . Machine",
                            sets: "4 sets x 10-15 reps",
                            key_num: 14),
                        SizedBox(
                          height: 35.r,
                        )
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
