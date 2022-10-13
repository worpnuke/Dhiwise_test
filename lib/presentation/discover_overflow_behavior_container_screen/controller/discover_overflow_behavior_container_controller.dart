import '/core/app_export.dart';
import 'package:test/presentation/discover_overflow_behavior_container_screen/models/discover_overflow_behavior_container_model.dart';
import 'package:test/widgets/custom_bottom_bar.dart';

class DiscoverOverflowBehaviorContainerController extends GetxController {
  Rx<DiscoverOverflowBehaviorContainerModel>
      discoverOverflowBehaviorContainerModelObj =
      DiscoverOverflowBehaviorContainerModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Imghome.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
