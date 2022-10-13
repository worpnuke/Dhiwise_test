import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/core/utils/validation_functions.dart';
import 'package:test/widgets/custom_button.dart';
import 'package:test/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 16, right: 16),
                                  child: InkWell(
                                      onTap: () {
                                        onTapImgReply();
                                      },
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgReply,
                                          height: getVerticalSize(11.00),
                                          width: getHorizontalSize(12.00)))),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 32, right: 16),
                                  child: Text("lbl_log_in2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtComfortaaRegular36)),
                              CustomTextFormField(
                                  width: 343,
                                  focusNode: FocusNode(),
                                  controller: controller.emailController,
                                  hintText: "msg_jane_example_co".tr,
                                  margin:
                                      getMargin(left: 16, top: 32, right: 16),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 343,
                                  focusNode: FocusNode(),
                                  controller: controller.componentController,
                                  hintText: "lbl".tr,
                                  margin:
                                      getMargin(left: 16, top: 16, right: 16),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              CustomButton(
                                  width: 343,
                                  text: "lbl_log_in2".tr.toUpperCase(),
                                  margin: getMargin(
                                      left: 16, top: 16, right: 16, bottom: 20),
                                  variant: ButtonVariant.OutlineBlack900_1,
                                  fontStyle:
                                      ButtonFontStyle.RobotoBlack13WhiteA700,
                                  onTap: onTapBtnLogin2,
                                  alignment: Alignment.center)
                            ]))))));
  }

  onTapImgReply() {
    Get.toNamed(AppRoutes.loggedOutScreen);
  }

  onTapBtnLogin2() {
    Get.toNamed(AppRoutes.discoverOverflowBehaviorContainerScreen);
  }
}
