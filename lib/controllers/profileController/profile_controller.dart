import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class ProfileController extends GetxController {
  final ImagePicker _picker = ImagePicker();
  XFile? image;

  Future<void> openCameraGallery({required bool isCamera}) async {
    image = await _picker.pickImage(
        source: isCamera ? ImageSource.camera : ImageSource.gallery);
    Get.back();
    update();
  }

}
