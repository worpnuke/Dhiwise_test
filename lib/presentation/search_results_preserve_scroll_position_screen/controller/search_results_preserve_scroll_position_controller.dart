import '/core/app_export.dart';
import 'package:test/presentation/search_results_preserve_scroll_position_screen/models/search_results_preserve_scroll_position_model.dart';
import 'package:test/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class SearchResultsPreserveScrollPositionController extends GetxController {
  TextEditingController componentController = TextEditingController();

  Rx<SearchResultsPreserveScrollPositionModel>
      searchResultsPreserveScrollPositionModelObj =
      SearchResultsPreserveScrollPositionModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Imghome.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    componentController.dispose();
  }
}
