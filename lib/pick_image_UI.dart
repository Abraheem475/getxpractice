import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation_practice/image_pick_getx.dart';

class PickImageUi extends StatefulWidget {
  const PickImageUi({super.key});

  @override
  State<PickImageUi> createState() => _PickImageUiState();
}

class _PickImageUiState extends State<PickImageUi> {

  ImagePickGetx controller = Get.put(ImagePickGetx());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx((){
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child:
            CircleAvatar(
              // backgroundColor: Colors.blue,
              radius: 50.0,
              backgroundImage: controller.imagePath.isNotEmpty ?
              FileImage(File(controller.imagePath.toString())):
              null,
            ),),
            SizedBox(height: 20.0,),
            ElevatedButton(onPressed: (){controller.getImage();}, child: Text("Pick Image"))
          ],
        );
      }),
    );
  }
}
