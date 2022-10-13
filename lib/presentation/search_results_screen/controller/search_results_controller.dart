import '/core/app_export.dart';
import 'package:test/presentation/search_results_screen/models/search_results_model.dart';
import 'package:test/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class SearchResultsController extends GetxController {
  TextEditingController componentController = TextEditingController();

  Rx<SearchResultsModel> searchResultsModelObj = SearchResultsModel().obs;

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
