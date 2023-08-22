
import 'dart:convert';

import 'package:final_exam_flutter/instagram/model/instagram_model.dart';
import 'package:http/http.dart' as http;
class SearchApiHelper
{
  static SearchApiHelper helper = SearchApiHelper._();

  SearchApiHelper._();

  List<dynamic> searchId=[];

  Future<String?> searchApiCalling(String instaId)
  async {
    String link = "https://instagram174.p.rapidapi.com/api/v1/user/$instaId/id";

    var response = await http.get(Uri.parse(link));

    Map json = jsonDecode(response.body);

    searchId=InstagramModel.fromJson(json) as List;

    String? id = searchId[0].result;

    print(id);

    return id;
  }
}