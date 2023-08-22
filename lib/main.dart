import 'package:final_exam_flutter/instagram/view/bottom_bar/view/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'instagram/view/2search/view/search2_screen.dart';

void main()
{
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/" : (p0) => BottomBarScreen(),
          "search" : (p0) => Search2Screen(),
        },
      ),
    ),
  );
}