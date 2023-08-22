import 'package:final_exam_flutter/instagram/view/2search/controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  SearchController controller = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  Get.toNamed("search");
                },
                child: Container(
                  height: 40.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white24,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 25,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(fontSize: 18, color: Colors.white54),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(1),
                    child: Container(
                      height: 50.sp,
                      width: 50.sp,
                      color: Colors.white,
                      child: Image.asset(
                        "${controller.imageList[index]}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                itemCount: controller.imageList.length,
              ),
            )
          ],
        ));
  }
}
