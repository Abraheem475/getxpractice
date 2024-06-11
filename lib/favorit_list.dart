import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation_practice/getx_favorit_list.dart';

class FavoritList extends StatefulWidget {
  const FavoritList({super.key});

  @override
  State<FavoritList> createState() => _FavoritListState();
}

class _FavoritListState extends State<FavoritList> {

  GetxFavoritList controller = Get.put(GetxFavoritList());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: controller.favoritList.length,
          itemBuilder: (context, index){
        return Card(
          child: ListTile(
            onTap: (){
              if(controller.tempList.contains(controller.favoritList[index].toString())){
                controller.tempList.remove(controller.favoritList[index].toString());
              }else{
                controller.tempList.add(controller.favoritList[index].toString());
              }
              setState(() {

              });
            },
            title: Text(controller.favoritList[index].toString()),
            trailing: Icon(Icons.favorite,
              color: controller.tempList.contains(controller.favoritList[index].toString()) ? Colors.red : Colors.white)),
        );}),
    );
  }
}
