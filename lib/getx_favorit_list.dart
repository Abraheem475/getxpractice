import 'package:get/get.dart';

class GetxFavoritList extends GetxController{


  RxList<String> favoritList = ['Orange', 'Mango', 'Banana', 'Grapes'].obs;
  RxList<dynamic> tempList = [].obs;

  addItem(String value){
    tempList.add(value);
  }

  removeList(String value){
    tempList.remove(value);
  }
}