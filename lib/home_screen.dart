import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getlocal/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController counterController = Get.put(CounterController());


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      counterController.IncrementCounter();
    });
  }
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX 2',),
      ),
      body: Center(
        child: (
        Obx((){
          return Text(counterController.counter1.toString(),style: TextStyle(fontSize: 60));
        })
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counterController.IncrementCounter();
        },
      ),
    );
  }
}
