import 'package:final_exam_flutter/instagram/view/1home/view/home_screen.dart';
import 'package:final_exam_flutter/instagram/view/2search/view/search_screen.dart';
import 'package:final_exam_flutter/instagram/view/3add_post/view/add_post_screen.dart';
import 'package:final_exam_flutter/instagram/view/4reels/view/reels_screen.dart';
import 'package:final_exam_flutter/instagram/view/5profile/view/profile_screen.dart';
import 'package:final_exam_flutter/instagram/view/bottom_bar/controller/bottom_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {

  BottomBarController controller = Get.put(BottomBarController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => IndexedStack(
            index: controller.i.value,
            children: [
              HomeScreen(),
              SearchScreen(),
              AddPostScreen(),
              ReelsScreen(),
              ProfileScreen(),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            onTap: (value) {
              controller.selectScreen(value);
            },
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.i.value,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home,size: 26,), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.search,size: 26,), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle_outline,size: 26,), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.movie_outlined,size: 26,), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined,size: 26,), label: ""),
            ],
          ),
        ),
      ),
    );
  }
}
