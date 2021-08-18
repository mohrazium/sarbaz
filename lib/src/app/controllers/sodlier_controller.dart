


import 'package:get/get.dart';

class SoldierController extends GetxController{

  late RxInt count = 2.obs;

  void inc(){
    count++;
  }

}