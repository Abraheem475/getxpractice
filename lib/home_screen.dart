import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('title'.tr),
          ),
          Row(children: [
            OutlinedButton(onPressed: (){
              Get.updateLocale(Locale('en','US'));
              }, child: Text("English")),
            SizedBox(width: 10),
            OutlinedButton(onPressed: (){
              Get.updateLocale(Locale('ur','PK'));
            }, child: Text("Urdu")),
          ],)
        ],
      ),
    );
  }
}
