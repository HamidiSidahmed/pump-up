import 'package:flutter/material.dart';

import '../pages/exercisesPage.dart/exoDescription.dart';

class DescriptionList {
  static List<ExoDescription> chest_exercises = [
    ExoDescription(
        tag: "chest",
        key_num: 0,
        image: "assets/exercises/chest/bench_press-removebg-preview.png",
        description:
            "The flat bench press is a fundamental compound exercise commonly used to build upper body strength and muscle mass. It primarily targets the pectoral muscles but also engages several other muscle groups",
        activation: [
          "1- Pectoralis Major (Chest) - 60-70% .",
          "2- Anterior Deltoids (Front Shoulders) - 15-20% .",
          "3- Triceps Brachii (Back of the Upper Arm) - 10-15% ."
        ]),
    ExoDescription(
        tag: "chest",
        key_num: 1,
        image:
            "assets/exercises/chest/machine_chest_press-removebg-preview.png",
        description:
            "The chest press machine is a popular exercise in many gyms, designed to simulate the flat bench press while providing more stability and control. It primarily targets the pectoral muscles but also involves several other muscle group .",
        activation: [
          "1- Pectoralis Major (Chest) - 60-70% .",
          "2- Anterior Deltoids (Front Shoulders) - 15-20% .",
          "3- Triceps Brachii (Back of the Upper Arm) - 10-15% ."
        ]),
    ExoDescription(
        tag: "chest",
        key_num: 2,
        image: "assets/exercises/chest/cable_fly_machine-removebg-preview.png",
        description:
            "The chest fly machine, also known as the pec deck or butterfly machine, is an isolation exercise specifically designed to target the pectoral muscles. It provides a controlled and stable environment to perform chest fly movements, allowing for focused muscle engagement .",
        activation: [
          "1- Pectoralis Major (Chest) - 70-80% .",
          "2- Anterior Deltoids (Front Shoulders) - 15-20% .",
          "3- Biceps Brachii (Front of the Upper Arm) - 5-10% .",
          "4- Rotator Cuff Muscles - 5-10%"
        ]),
    ExoDescription(
        tag: "chest",
        key_num: 3,
        image:
            "assets/exercises/chest/incline_Dumbbell_press-removebg-preview (1).png",
        description:
            "The incline dumbbell bench press is a popular compound exercise that targets the upper portion of the pectoral muscles. By performing this exercise on an incline bench, you shift more of the workload to the upper chest and shoulders, while still engaging other supporting muscles",
        activation: [
          "1- Pectoralis Major (Upper Chest) - 60-70% .",
          "2- Anterior Deltoids (Front Shoulders) - 15-20% .",
          "3- Triceps Brachii (Back of the Upper Arm) - 10-15% ."
        ]),
    ExoDescription(
        tag: "chest",
        key_num: 4,
        image:
            "assets/exercises/chest/incline_chest_press-removebg-preview.png",
        description:
            "The incline bench press machine is a popular exercise that targets the upper portion of the pectoral muscles while providing stability and control. Using a machine for this exercise ensures a guided path of motion, which can be beneficial for maintaining proper form and reducing the risk of injury .",
        activation: [
          "1- Pectoralis Major (Upper Chest)  -  60-70% .",
          "2- Anterior Deltoids (Front Shoulders) - 15-20% .",
          "3- Triceps Brachii (Back of the Upper Arm) - 10-15% ."
        ]),
    ExoDescription(
        tag: "chest",
        key_num: 5,
        image: "assets/exercises/chest/Cable_Standing_Fly-removebg-preview.png",
        description:
            "The cable chest fly, also known as the cable crossover, is an isolation exercise designed to target the pectoral muscles. By using cables, you maintain constant tension throughout the entire range of motion, providing a unique and effective stimulus for muscle growth and definition .",
        activation: [
          "1- Pectoralis Major (Lower Chest)  -  70-80% .",
          "2- Anterior Deltoids (Front Shoulders) - 15-20% .",
          "3- Triceps Brachii (Back of the Upper Arm) - 10-15% ."
        ]),
    ExoDescription(
        tag: "chest",
        key_num: 6,
        image: "assets/exercises/chest/Dumbbell_fly-removebg-preview (1).png",
        description:
            "The dumbbell chest fly is a great exercise for targeting the pectoral muscles and is commonly performed to develop strength and definition in the chest area.",
        activation: [
          "1- Pectoralis Major (Lower Chest)  -  70-80% .",
          "2- Anterior Deltoids (Front Shoulders) - 15-20% .",
          "3- Biceps Brachii (Front of the Upper Arm) - 5-10% ."
        ])
  ];
  static List<ExoDescription> back_exercises = [
    ExoDescription(
      tag: "back",
      key_num: 0,
      image: "assets/exercises/back/barbell rowing.png",
      description:
          "The barbell row is a compound exercise that primarily targets the muscles of the upper and middle back. It involves pulling a barbell towards your torso while maintaining a bent-over position, engaging multiple muscle groups in the process.",
      activation: [
        "1- Latissimus Dorsi (Lats): 25-30%",
        "2- Trapezius (Traps): 20-25%",
        "3- Erector Spinae: 10-15%",
        "4- Teres Major: 5-10%",
        "5- Biceps: 10-15%",
      ],
    ),
    ExoDescription(
      tag: "back",
      key_num: 1,
      image: "assets/exercises/back/lat pull down.png",
      description:
          "The lat pulldown is a compound exercise that targets the upper back muscles, primarily the latissimus dorsi. It involves pulling a bar down towards your chest while sitting, using a cable machine. This exercise mimics the pull-up movement but allows for adjustable resistance.",
      activation: [
        "1- Latissimus Dorsi (Lats): 60-70%",
        "2- Trapezius (Traps): 15-20%",
        "3- Erector Spinae: 5-10%",
        "4- Teres Major: 5-10%",
        "5- Biceps: 20-30%",
      ],
    ),
    ExoDescription(
      tag: "back",
      key_num: 2,
      image: "assets/exercises/back/one hand dumbbell rowing.png",
      description:
          "The one-arm dumbbell row is a unilateral strength training exercise that targets the muscles of the back. It involves rowing a dumbbell towards your hip while maintaining a bent-over position.",
      activation: [
        "1- Latissimus Dorsi (Lats): 40-45%",
        "2- Trapezius (Traps): 15-20%",
        "3- Erector Spinae: 10-15%",
        "4- Teres Major: 5-10%",
        "5- Biceps: 10-15%",
      ],
    )
  ];
  static List<ExoDescription> shoulder_exercies = [
    ExoDescription(
        tag: "shoulder",
        key_num: 0,
        image: "assets/exercises/shoulders/Seated military press.png",
        description:
            "The seated military press is compound exercise that primarily targets the shoulder muscles but also engages several other muscle groups.",
        activation: [
          "1- Anterior Deltoid: 40%",
          "2- Lateral Deltoid: 20-30%",
          "3- Triceps Brachii: 15-20%",
          "4- Upper Pectorals: 10-15% "
        ]),
    ExoDescription(
        tag: "shoulder",
        key_num: 1,
        image: "assets/exercises/shoulders/Dumbbell front raise.png",
        description:
            "The dumbbell front raise is an isolation exercise that primarily targets the anterior deltoids (front shoulders) but also engages other muscles to a lesser extent.",
        activation: [
          "1- Anterior Deltoid: 70-80%",
          "2- Lateral Deltoid: 5-10%",
          "3- Upper Pectorals: 5-10%",
          "4- Biceps Brachii: 2-5%"
        ]),
    ExoDescription(
        tag: "shoulder",
        key_num: 2,
        image: "assets/exercises/shoulders/lateral raises.png",
        description:
            "Lateral raises, also known as side lateral raises, are an isolation exercise that primarily targets the lateral deltoids (side shoulders), helping to build width and improve the overall shape of the shoulders.",
        activation: [
          "1- Lateral Deltoid - 70-80%",
          "2- Anterior Deltoid - 10-15%",
          "3- Posterior Deltoid - 5-10%",
          "4- Trapezius - 5-10%"
        ]),
    ExoDescription(
        tag: "shoulder",
        key_num: 3,
        image: "assets/exercises/shoulders/lateral raises cable.png",
        description:
            "Cable lateral raises are a variation of the traditional lateral raise that uses a cable machine to provide constant tension throughout the movement. This exercise primarily targets the lateral deltoids (side shoulders) and can help build width and improve shoulder definition.",
        activation: [
          "1- Lateral Deltoid - 70-80%",
          "2- Anterior Deltoid - 10-15%",
          "3- Posterior Deltoid - 5-10%",
          "4- Trapezius - 5-10%"
        ]),
    ExoDescription(
        tag: "shoulder",
        key_num: 4,
        image: "assets/exercises/shoulders/upright row barbell.png",
        description:
            "The barbell upright row is a compound exercise that primarily targets the shoulders and upper back muscles. It is effective for building shoulder width and overall upper body strength.",
        activation: [
          "1- Lateral Deltoid - 25-30%",
          "2- Anterior Deltoid - 25-30%",
          "3- Levator Scapulae: - 5%",
          "4- Trapezius - 30-40%"
        ]),
    ExoDescription(
        tag: "shoulder",
        key_num: 5,
        image: "assets/exercises/shoulders/Reverse fly.png",
        description:
            "The reverse fly is an isolation exercise that primarily targets the rear deltoids (posterior shoulder muscles) and the upper back. It is effective for improving shoulder stability and posture.",
        activation: [
          "1- Posterior Deltoid - 50-60%",
          "2- Rhomboids - 20-30%",
          "3- Trapezius - 10-20%",
        ]),
    ExoDescription(
        tag: "shoulder",
        key_num: 6,
        image: "assets/exercises/shoulders/Standing face pull.png",
        description:
            "The standing face pull is an effective exercise that targets the rear deltoids, upper back, and traps. It helps improve shoulder health and posture.",
        activation: [
          "1- Posterior Deltoid - 40-50%",
          "2- Rhomboids - 20-30%",
          "3- Trapezius - 20-30%",
          "4- Rotator Cuff Muscles - 5-10%",
          "5- Biceps Brachii - 5%"
        ])
  ];
  static List<ExoDescription> biceps_description = [
    ExoDescription(
        tag: "biceps",
        key_num: 0,
        image: "assets/exercises/biceps/EZ barbell biceps curl.png",
        description:
            "The EZ barbell bicep curl is a popular exercise for targeting the biceps brachii. Using an EZ bar (a bar with a zigzag shape) allows for a more comfortable grip and can reduce stress on the wrists and elbows compared to a straight barbell.",
        activation: [
          "1- Biceps Brachii - 60-70%",
          "2- Brachialis - 15-20%",
          "3- Brachioradialis - 10-15%",
          "4- Forearm Flexors - 5-10%"
        ]),
    ExoDescription(
        tag: "biceps",
        key_num: 1,
        image: "assets/exercises/biceps/hummer curl.png",
        description:
            "The hammer curl is a variation of the traditional bicep curl that emphasizes the brachialis and brachioradialis muscles, in addition to the biceps brachii. This exercise is performed with a neutral grip (palms facing each other), which can reduce stress on the wrists and elbows while providing a different stimulus to the arm muscles.",
        activation: [
          "1- Brachialis - 40-50%",
          "2- Biceps Brachii - 20-30%",
          "3- Brachioradialis - 20-30%",
          "4- Forearm Flexors - 5-10%"
        ]),
    ExoDescription(
        tag: "biceps",
        key_num: 2,
        image: "assets/exercises/biceps/EZ barbell reverse biceps curl.png",
        description:
            "The EZ barbell reverse biceps curl is a variation of the traditional bicep curl that targets the brachioradialis muscle along with the biceps brachii and brachialis. This exercise uses an overhand grip (pronated grip) on the EZ bar, which can help reduce wrist strain and provide a different stimulus to the arm muscles. ",
        activation: [
          "1- Brachioradialis - 40-50%",
          "2- Brachialis - 20-30%",
          "3- Biceps Brachii - 20-30%",
          "4- Forearm Flexors - 5-10%"
        ]),
    ExoDescription(
        tag: "biceps",
        key_num: 3,
        image: "assets/exercises/biceps/Seated dumbell curl.png",
        description:
            "The seated dumbbell curl is a variation of the traditional bicep curl that isolates the biceps more effectively by eliminating the use of momentum from the legs and torso. This exercise is performed while seated, which helps maintain proper form and focuses the effort on the biceps.",
        activation: [
          "1- Biceps Brachii - 60-70%",
          "2- Brachialis - 15-20%",
          "3- Brachioradialis - 10-15%",
          "4- Forearm Flexors - 5-10%"
        ]),
    ExoDescription(
        tag: "biceps",
        key_num: 4,
        image: "assets/exercises/biceps/Cable Biceps Curl.png",
        description:
            "The cable biceps curl is an excellent exercise for isolating and building the biceps. Using a cable machine for this exercise provides constant tension throughout the range of motion, which can enhance muscle activation and development compared to free weights.",
        activation: [
          "1- Biceps Brachii - 60-70%",
          "2- Brachialis - 15-20%",
          "3- Brachioradialis - 10-15%",
          "4- Forearm Flexors - 5-10%"
        ])
  ];
  static List<ExoDescription> triceps_exercises = [
    ExoDescription(
        tag: "triceps",
        key_num: 0,
        image: "assets/exercises/triceps/triceps push down.png",
        description:
            "The triceps pushdown is a popular exercise for isolating and strengthening the triceps, the muscle at the back of the upper arm. This exercise is performed using a cable machine with a bar attachment, and it effectively targets all three heads of the triceps.",
        activation: [
          "1- Long Head - 25-35%",
          "2- Lateral Head - 50-60%",
          "3- Medial Head - 15-25%"
        ]),
    ExoDescription(
        tag: "triceps",
        key_num: 1,
        image: "assets/exercises/triceps/triceps push down rope.png",
        description:
            "The triceps pushdown with a rope attachment is a variation of the triceps pushdown exercise that allows for a greater range of motion and helps target different parts of the triceps. Using a rope attachment enables you to extend and contract the triceps more fully, engaging the muscles more effectively.",
        activation: [
          "1- Long Head - 30-40%",
          "2- Lateral Head - 40-50%",
          "3- Medial Head - 20-30%"
        ]),
    ExoDescription(
        tag: "triceps",
        key_num: 2,
        image: "assets/exercises/triceps/Dumbbell Skullcrushers.png",
        description:
            "Dumbbell skull crushers are an effective exercise for isolating and developing the triceps, particularly the long head. This exercise involves extending the elbows while keeping the upper arms stationary, which focuses on the triceps muscles.",
        activation: [
          "1- Long Head - 40-50%",
          "2- Lateral Head - 30-40%",
          "3- Medial Head - 20-30%"
        ]),
    ExoDescription(
        tag: "triceps",
        key_num: 3,
        image: "assets/exercises/triceps/Barbell Skullcrushers.png",
        description:
            "Barbell skull crushers are a highly effective exercise for targeting the triceps, particularly the long head. This exercise involves extending the elbows while keeping the upper arms stationary, which isolates and strengthens the triceps.",
        activation: [
          "1- Long Head - 40-50%",
          "2- Lateral Head - 30-40%",
          "3- Medial Head - 20-30%"
        ]),
    ExoDescription(
        tag: "triceps",
        key_num: 4,
        image: "assets/exercises/triceps/triceps behind head-dumbell.png",
        description:
            "The triceps behind-the-head extension, often referred to as the overhead triceps extension, is a great exercise for targeting the triceps, especially the long head. This exercise can be performed using a single dumbbell and emphasizes the full stretch and contraction of the triceps.",
        activation: [
          "1- Long Head - 50-60%",
          "2- Lateral Head - 20-30%",
          "3- Medial Head - 20-30%"
        ]),
    ExoDescription(
        tag: "triceps",
        key_num: 5,
        image: "assets/exercises/triceps/Triceps Kickback.png",
        description:
            "The triceps kickback is a popular exercise for isolating and developing the triceps. It involves extending the elbow while keeping the upper arm stationary, which focuses on the contraction of the triceps muscles.",
        activation: [
          "1- Long Head - 25-35%",
          "2- Lateral Head - 40-50%",
          "3- Medial Head - 25-35%"
        ])
  ];
  static List<ExoDescription> forearm_exercises = [
    ExoDescription(
        tag: "forearms",
        key_num: 0,
        image: "assets/exercises/forearms/Palms-down wrist curl.png",
        description:
            "The palms-down wrist curl, also known as the reverse wrist curl, is an exercise that targets the forearm extensors. This exercise helps in building strength and endurance in the muscles of the forearm, improving grip strength and overall arm aesthetics. ",
        activation: [
          "1- Forearm Extensors - 70-80%",
          "2- Brachioradialis - 10-15%",
          "3- Finger Extensors: ~5-10%"
        ]),
    ExoDescription(
        tag: "forearms",
        key_num: 1,
        image: "assets/exercises/forearms/Palms-up wrist curl barbell.png",
        description:
            "The palms-up wrist curl, also known as the wrist curl or supinated wrist curl, primarily targets the forearm flexors. This exercise helps in building strength and endurance in the muscles of the forearm, improving grip strength and overall arm aesthetics. ",
        activation: [
          "1- Forearm Extensors - 70-80%",
          "2- Brachioradialis - 10-15%",
          "3- Finger Extensors: ~5-10%"
        ])
  ];
  static List<ExoDescription> leg_exercises = [
    ExoDescription(
        tag: "legs",
        key_num: 0,
        image: "assets/exercises/legs/squat.png",
        description:
            "The squat is a fundamental exercise that targets multiple muscle groups, making it a staple in strength training and fitness routines. It primarily focuses on the lower body but also engages the core and upper body for stability.",
        activation: [
          "1- Quadriceps - 40-50%",
          "2- Gluteus Maximus - 30-40%",
          "3- Hamstrings - 15-20%",
          "4- Other Muscles (Adductors, Calves, Core, Lower Back) - 10-20%"
        ]),
    ExoDescription(
        tag: "legs",
        key_num: 1,
        image: "assets/exercises/legs/Leg_Extensions.png",
        description:
            "Leg extensions are an isolation exercise primarily targeting the quadriceps muscles of the front thigh. This exercise is often performed using a leg extension machine. ",
        activation: ["1- Quadriceps - 100% "]),
    ExoDescription(
        tag: "legs",
        key_num: 2,
        image: "assets/exercises/legs/leg press.png",
        description:
            "The leg press is a popular lower body exercise that primarily targets the quadriceps, but also engages the glutes, hamstrings, and calves. It is performed on a leg press machine and is an effective way to build strength and muscle in the legs.",
        activation: [
          "1- Quadriceps - 50-60%",
          "2- Gluteus Maximus - 20-30%",
          "3- Hamstrings - 10-15%",
          "4- Calves and Adductors - 5-10%"
        ]),
    ExoDescription(
        tag: "legs",
        key_num: 3,
        image: "assets/exercises/legs/split_squat.png",
        description:
            "The split squat is a unilateral leg exercise that targets the muscles of the lower body, particularly the quadriceps, glutes, and hamstrings. This exercise helps improve balance, coordination, and muscle imbalances between the legs.",
        activation: [
          "1- Quadriceps - 40-50%",
          "2- Gluteus Maximus - 30-35%",
          "3- Hamstrings - 10-15%",
          "4- Calves and Adductors - 5-10%"
        ]),
    ExoDescription(
        tag: "legs",
        key_num: 4,
        image: "assets/exercises/legs/sumo squat.png",
        description:
            "The sumo squat, particularly when performed with a dumbbell, is a great exercise for targeting the muscles of the lower body, including the quadriceps, glutes, hamstrings, and adductors (inner thighs). This exercise is excellent for improving strength, stability, and flexibility in the lower body.",
        activation: [
          "1- Quadriceps - 30-40%",
          "2- Gluteus Maximus - 30-40%",
          "3- Adductors - 15-25%",
          "4- Hamstrings - 10-15%",
          "5- Other Muscles (Calves, Core) - 5-10%"
        ]),
    ExoDescription(
        tag: "legs",
        key_num: 5,
        image: "assets/exercises/legs/lungs.png",
        description:
            "The dumbbell lunge is an effective lower body exercise that targets the quadriceps, hamstrings, glutes, and calves. It also helps improve balance and coordination.",
        activation: [
          "1- Quadriceps - 40-50%",
          "2- Gluteus Maximus - 30-35%",
          "3- Hamstrings - 15-20%",
          "4- Calves and Adductors - 5-10%"
        ]),
    ExoDescription(
        tag: "legs",
        key_num: 6,
        image: "assets/exercises/legs/calf raise machine.png",
        description:
            "The calf raise machine is an effective piece of equipment for targeting the muscles of the lower leg, primarily the gastrocnemius and soleus muscles. This exercise helps in building strength and definition in the calves.",
        activation: [
          "1- Gastrocnemius - 60-70%",
          "2- Soleus - 30-40%",
        ]),
    ExoDescription(
        tag: "legs",
        key_num: 7,
        image: "assets/exercises/legs/Seated Calf Raise.png",
        description:
            "The seated calf raise is an excellent exercise for targeting the soleus muscle of the calf, which is located underneath the gastrocnemius muscle. This exercise helps build strength and definition in the lower legs and is particularly effective for isolating the soleus due to the bent knee position. ",
        activation: [
          "1- Soleus - 70-80%",
          "2- Gastrocnemius - 20-30%",
        ]),
    ExoDescription(
        tag: "legs",
        key_num: 8,
        image: "assets/exercises/legs/hamstrings curl.png",
        description:
            "The hamstring curl, also known as the leg curl, is an effective exercise for targeting the hamstring muscles located at the back of the thigh. This exercise can be performed using various equipment such as a lying leg curl machine, seated leg curl machine, or even with resistance bands. ",
        activation: [
          "1- Hamstrings - 70-80%",
          "2- Calves (Gastrocnemius) - 10-15%",
          "3- Glutes - 5-10%"
        ]),
    ExoDescription(
        tag: "legs",
        key_num: 9,
        image: "assets/exercises/legs/Dead Lift.png",
        description:
            "The hamstring curl, also known as the leg curl, is an effective exercise for targeting the hamstring muscles located at the back of the thigh. This exercise can be performed using various equipment such as a lying leg curl machine, seated leg curl machine, or even with resistance bands. ",
        activation: [
          "1- Hamstrings - 50-60%",
          "2- Gluteus Maximus - 20-30%",
          "3- Erector Spinae - 10-20%",
          "4- Core Muscles and Forearms - 5-10%"
        ]),
  ];
  static List<ExoDescription> abs_exercises = [
    ExoDescription(
        tag: "abs",
        key_num: 0,
        image: "assets/exercises/abs/crunch machine.png",
        description:
            "he crunch machine is designed to target the abdominal muscles, specifically the rectus abdominis. This exercise provides a controlled way to perform crunches with added resistance, which can help build core strength and muscle definition.",
        activation: [
          "1- Rectus Abdominis - 70-80%",
          "2- Obliques - 10-15%",
          "3- Hip Flexors - 5-10%"
        ]),
    ExoDescription(
        tag: "abs",
        key_num: 1,
        image: "assets/exercises/abs/lag raises.png",
        description:
            "Leg raises are an excellent exercise for targeting the lower abdominal muscles, as well as the hip flexors. This exercise can be performed in various ways, such as lying on the floor, using a captain's chair, or hanging from a bar.",
        activation: [
          "1- Rectus Abdominis - 60-70%",
          "2- Hip Flexors - 20-30%",
          "3- Obliques and Quadriceps - 5-10%",
        ]),
    ExoDescription(
        tag: "abs",
        key_num: 2,
        image: "assets/exercises/abs/plank.png",
        description:
            "The plank is a highly effective isometric exercise that targets the core muscles, including the abdominals, obliques, and lower back. This exercise is excellent for building core strength, stability, and endurance. ",
        activation: [
          "1- Rectus Abdominis - 30-40%",
          "2- Transverse Abdominis - 20-30%",
          "3- Obliques - 10-20%",
        ]),
    ExoDescription(
        tag: "abs",
        key_num: 3,
        image: "assets/exercises/abs/SIDE PLANK.png",
        description:
            "The side plank is an effective exercise for targeting the obliques, which are the muscles located on the sides of the abdomen, as well as engaging the shoulders, hips, and core stabilizers.",
        activation: [
          "1- Obliques - 50-60%",
          "2- Rectus Abdominis and Transverse Abdominis - 20-30%",
          "3- Gluteus Medius and Minimus - 10-15%",
        ])
  ];
}
