import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation_practice/opacity_controller.dart';

class OpacityUi extends StatefulWidget {
  OpacityUi({super.key});

  @override
  State<OpacityUi> createState() => _OpacityUiState();
}

class _OpacityUiState extends State<OpacityUi> {
  OpacityController controller = Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      body: Column(
        children: [
         Obx(() => Center(child: Container(
           height: 200.0,
           width: 200.0,
           color: Colors.red.withOpacity(controller.opacity.value),)),),
          Obx(() => Slider(
              activeColor: Colors.red,value: controller.opacity.value, onChanged: (value){
            controller.setOpacity(value);
          })),
        ],
      ),
    );
  }
}
