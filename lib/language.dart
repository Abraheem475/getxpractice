import 'package:get/get_navigation/src/root/internacionalization.dart';

class Language extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'message': 'What is your name',
      'title' : 'My name is Mohammad Abraheem'
     },
    'ur_PK': {
      'message': 'آپ کا نام کیا ہے',
      'title' : 'میرا نام محمد ابراہیم ہے۔'
    }
  };

}