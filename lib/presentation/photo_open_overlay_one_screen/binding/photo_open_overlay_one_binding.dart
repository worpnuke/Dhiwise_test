import '../controller/photo_open_overlay_one_controller.dart';
import 'package:get/get.dart';

class PhotoOpenOverlayOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhotoOpenOverlayOneController());
  }
}
