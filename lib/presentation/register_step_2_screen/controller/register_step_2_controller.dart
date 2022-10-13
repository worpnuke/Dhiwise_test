import '/core/app_export.dart';
import 'package:test/presentation/register_step_2_screen/models/register_step_2_model.dart';
import 'package:flutter/material.dart';

class RegisterStep2Controller extends GetxController {
  TextEditingController componentController = TextEditingController();

  Rx<RegisterStep2Model> registerStep2ModelObj = RegisterStep2Model().obs;

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
