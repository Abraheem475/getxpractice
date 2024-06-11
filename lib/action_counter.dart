import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'counter_controller.dart';

class Increments extends StatelessWidget {
  const Increments({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());
    return Scaffold(
      body: Obx((){
        return Center(child: Text(controller.counter.toString(),style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),));
      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
          child: Icon(Icons.add),onPressed: (){
        controller.IncrementCounter();
      }),
    );
  }
}
