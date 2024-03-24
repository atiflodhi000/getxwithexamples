

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getlocal/counter_controller.dart';

import 'container_controller.dart';

class ConExmp extends StatefulWidget {
  const ConExmp({Key? key}) : super(key: key);

  @override
  State<ConExmp> createState() => _ConExmpState();
}

class _ConExmpState extends State<ConExmp> {

  final ContainerController containerController = Get.put(ContainerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Column(
        children: [
          Obx(() => Container(
            height: 200,
            width: 200,
            color: Colors.red.withOpacity(containerController.opacity.value),
          )),
          Obx(() => Slider(value: containerController.opacity.value, onChanged: (value){
            containerController.SliderChanger(value);
          }))
        ],
      ),
    );
  }
}
