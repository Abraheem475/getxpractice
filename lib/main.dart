import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:translation_practice/home_screen.dart';
import 'package:translation_practice/language.dart';
import 'package:translation_practice/login_ui.dart';
import 'package:translation_practice/pick_image_UI.dart';
import 'package:translation_practice/switch_button.dart';

import 'action_counter.dart';
import 'favorit_list.dart';
import 'opacity_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      translations: Language(),
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginUi(),
    );
  }
}
