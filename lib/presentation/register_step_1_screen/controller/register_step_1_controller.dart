import '/core/app_export.dart';
import 'package:test/presentation/register_step_1_screen/models/register_step_1_model.dart';
import 'package:flutter/material.dart';

class RegisterStep1Controller extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController componentController = TextEditingController();

  Rx<RegisterStep1Model> registerStep1ModelObj = RegisterStep1Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    componentController.dispose();
  }
}
