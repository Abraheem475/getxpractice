import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation_practice/login_with_getx.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {

  LoginWithGetx controller = Get.put(LoginWithGetx());
  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: const InputDecoration(
                hintText: "Email"
              ),
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: const InputDecoration(
                hintText: "Password")),
            const SizedBox(height: 40.0,),
            Obx(() => InkWell(
              onTap: (){
                controller.LoginApi();
              },
              child: controller.loading.value ? CircularProgressIndicator() : Container(
                width: Get.width,
                height: 50.0,
                color: Colors.grey,
                child: Center(child: Text("LogIn",style: TextStyle(color: Colors.white),)),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
