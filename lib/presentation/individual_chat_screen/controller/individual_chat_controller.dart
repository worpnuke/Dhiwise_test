import '/core/app_export.dart';
import 'package:test/presentation/individual_chat_screen/models/individual_chat_model.dart';
import 'package:test/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class IndividualChatController extends GetxController {
  TextEditingController groupFourController = TextEditingController();

  Rx<IndividualChatModel> individualChatModelObj = IndividualChatModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Imghome.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFourController.dispose();
  }
}
