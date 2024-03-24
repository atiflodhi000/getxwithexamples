
import 'dart:html';

import 'package:get/get.dart';

class ExampleController extends GetxController{
  RxBool notification = false.obs;

  SetNotification(bool value){
    notification.value=value;
  }
  TF(){

  }
}