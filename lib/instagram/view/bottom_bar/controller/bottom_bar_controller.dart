import 'package:get/get.dart';

class BottomBarController extends GetxController
{
  RxInt i=0.obs;

  void selectScreen(int value)
  {
    i.value = value;
  }
}