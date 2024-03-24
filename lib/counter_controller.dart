import 'package:get/get.dart';

class CounterController extends GetxController{
  //final counter = 1.obs;
  RxInt counter1 = 1.obs;
  IncrementCounter(){
    counter1.value++;
    print(counter1.value);
  }

}