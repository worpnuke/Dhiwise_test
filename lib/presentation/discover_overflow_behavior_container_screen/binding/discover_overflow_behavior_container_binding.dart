import '../controller/discover_overflow_behavior_container_controller.dart';
import 'package:get/get.dart';

class DiscoverOverflowBehaviorContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DiscoverOverflowBehaviorContainerController());
  }
}
