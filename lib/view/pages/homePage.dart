import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pump_up/controller/viewController.dart';
import 'package:pump_up/view/pages/home%20pages/firsHomePage.dart';
import 'package:pump_up/view/pages/home%20pages/secondHomePage.dart';
import 'package:pump_up/view/pages/home%20pages/thirdHomePage.dart';
import 'package:pump_up/view/utils/bottomBar.dart';
import 'package:pump_up/view/utils/muscleCard.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        bottomNavigationBar: BottomBar(
          controller: controller,
        ),
        backgroundColor: Colors.black,
        body: Container(
          height: 1.sh,
          child: PageView(
            onPageChanged: (value) =>
                ViewController.currentBottomIndex.value = value,
            controller: controller,
            children: [FirstHomePage(), Secondhomepage(), Thirdhomepage()],
          ),
        ),
      ),
    );
  }
}
