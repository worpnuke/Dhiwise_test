import 'controller/register_step_2_controller.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/widgets/custom_button.dart';
import 'package:test/widgets/custom_text_form_field.dart';

class RegisterStep2Screen extends GetWidget<RegisterStep2Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Padding(
                          padding: getPadding(left: 16, top: 16, right: 16),
                          child: InkWell(
                              onTap: () {
                                onTapImgReply();
                              },
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgReply,
                                  height: getVerticalSize(11.00),
                                  width: getHorizontalSize(12.00)))),
                      Padding(
                          padding: getPadding(left: 16, top: 32, right: 16),
                          child: Text("lbl_register2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtComfortaaRegular36)),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.componentController,
                          hintText: "lbl_the_jane".tr,
                          margin: getMargin(left: 16, top: 32, right: 16),
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center),
                      CustomButton(
                          width: 343,
                          text: "lbl_sign_up".tr.toUpperCase(),
                          margin: getMargin(left: 16, top: 16, right: 16),
                          variant: ButtonVariant.OutlineBlack900_1,
                          fontStyle: ButtonFontStyle.RobotoBlack13WhiteA700,
                          onTap: onTapBtnSignup,
                          alignment: Alignment.center),
                      Container(
                          width: getHorizontalSize(324.00),
                          margin: getMargin(
                              left: 16, top: 35, right: 16, bottom: 20),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_by_signing_up2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(13),
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        height: 1.38)),
                                TextSpan(
                                    text: "msg_terms_of_servic".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(13),
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        height: 1.38,
                                        decoration: TextDecoration.underline)),
                                TextSpan(
                                    text: "lbl_and".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(13),
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        height: 1.38)),
                                TextSpan(
                                    text: "lbl_privacy_policy".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(13),
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        height: 1.38,
                                        decoration: TextDecoration.underline)),
                                TextSpan(
                                    text: "lbl2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(13),
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        height: 1.38))
                              ]),
                              textAlign: TextAlign.left))
                    ])))));
  }

  onTapImgReply() {
    Get.toNamed(AppRoutes.registerStep1Screen);
  }

  onTapBtnSignup() {
    Get.toNamed(AppRoutes.discoverOverflowBehaviorContainerScreen);
  }
}
