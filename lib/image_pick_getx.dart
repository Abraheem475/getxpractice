import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickGetx extends GetxController{
  RxString imagePath = ''.obs;

  Future getImage() async{
    final ImagePicker _pickImage = ImagePicker();
    final image = await _pickImage.pickImage(source: ImageSource.gallery);
    if(image != null){
      imagePath.value = image.path;
    }
  }
}