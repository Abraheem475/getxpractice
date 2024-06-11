import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation_practice/switch_button_getx.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    SwitchButtonGetx controller = Get.put(SwitchButtonGetx());
    print("Builder");
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Notifcation",style: TextStyle(color: Colors.black,fontSize: 14.0,),),
          Obx(()=> Switch(
              activeColor: Colors.blue,
              value: controller.notification.value, onChanged: (value){
                controller.notificationButton(value);
          }))
        ],
      ),
    );
  }
}
