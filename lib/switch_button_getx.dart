import 'package:get/get.dart';

class SwitchButtonGetx extends GetxController{
  RxBool notification = false.obs;
  notificationButton(bool value) {
    notification.value = value;
  }
}