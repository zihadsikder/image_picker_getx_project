import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {

  RxString imagePath = ''.obs;
  final ImagePicker _picker = ImagePicker();
  @override
  void onInit() {
    super.onInit();
  }

  Future<void> pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image!= null) {
      imagePath.value = image.path;
    }
  }



}
