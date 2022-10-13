import '../controller/search_results_preserve_scroll_position_controller.dart';
import 'package:get/get.dart';

class SearchResultsPreserveScrollPositionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchResultsPreserveScrollPositionController());
  }
}
