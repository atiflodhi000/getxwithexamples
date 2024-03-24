
import 'package:get/get.dart';

class ContainerController extends GetxController{
  RxDouble opacity = 0.4.obs;

  SliderChanger(double value){
    opacity.value = value;
  }
}