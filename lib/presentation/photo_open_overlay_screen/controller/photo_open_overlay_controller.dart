import '/core/app_export.dart';
import 'package:test/presentation/photo_open_overlay_screen/models/photo_open_overlay_model.dart';

class PhotoOpenOverlayController extends GetxController {
  Rx<PhotoOpenOverlayModel> photoOpenOverlayModelObj =
      PhotoOpenOverlayModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
