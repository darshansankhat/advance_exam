import 'package:final_exam_flutter/instagram/controller/instagram_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Search2Screen extends StatefulWidget {
  const Search2Screen({super.key});

  @override
  State<Search2Screen> createState() => _Search2ScreenState();
}

class _Search2ScreenState extends State<Search2Screen> {

  InstagramController controller = Get.put(InstagramController());
  TextEditingController txtid = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Container(
            height: 40.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white24,
            ),
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: txtid,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.white24),
                prefixIcon: Icon(Icons.search,color: Colors.white,),
                suffixIcon: IconButton(onPressed: () {
                  controller.searchIdApi(txtid.text);
                }, icon: Icon(Icons.send,color: Colors.white,)),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
