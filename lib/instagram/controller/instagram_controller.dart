import 'package:final_exam_flutter/instagram/utils/search_api.dart';
import 'package:get/get.dart';

class InstagramController extends GetxController
{
  String id ="";
  Future<String> searchIdApi(instaId)
  async {
    id = (await SearchApiHelper.helper.searchApiCalling(instaId))!;
    return id;
  }
}