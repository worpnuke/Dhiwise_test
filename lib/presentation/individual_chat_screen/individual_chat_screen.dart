import 'controller/individual_chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/discover_overflow_behavior_page/discover_overflow_behavior_page.dart';
import 'package:test/widgets/custom_bottom_bar.dart';
import 'package:test/widgets/custom_text_form_field.dart';

class IndividualChatScreen extends GetWidget<IndividualChatController> {
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: size.width,
                              child: Container(
                                  decoration: AppDecoration.outlineBlack9004c,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 9, top: 12, bottom: 11),
                                            child: InkWell(
                                                onTap: () {
                                                  onTapImgArrowleft();
                                                },
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleft,
                                                    height:
                                                        getVerticalSize(21.00),
                                                    width: getHorizontalSize(
                                                        12.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 140, top: 13, bottom: 13),
                                            child: Text("lbl_james".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProTextSemibold17
                                                    .copyWith(height: 1.00)))
                                      ])))),
                      Padding(
                          padding: getPadding(left: 16, top: 32, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2, bottom: 54),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(14.00)),
                                        child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse64X64,
                                            height: getSize(28.00),
                                            width: getSize(28.00),
                                            fit: BoxFit.cover))),
                                Container(
                                    decoration: AppDecoration.fillBlack90007
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderBL6),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(256.00),
                                              margin: getMargin(
                                                  left: 16,
                                                  top: 19,
                                                  right: 16,
                                                  bottom: 16),
                                              child: Text(
                                                  "msg_really_love_you".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular13
                                                      .copyWith(height: 1.38)))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 24, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    decoration: AppDecoration.fillBlack90007
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderTL6),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(258.00),
                                              margin: getMargin(
                                                  left: 16,
                                                  top: 19,
                                                  right: 16,
                                                  bottom: 16),
                                              child: Text(
                                                  "msg_a_fast_50mm_lik".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular13
                                                      .copyWith(height: 1.38)))
                                        ])),
                                Padding(
                                    padding: getPadding(bottom: 56),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(14.00)),
                                        child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse128X128,
                                            height: getSize(28.00),
                                            width: getSize(28.00),
                                            fit: BoxFit.cover)))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 24, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2, bottom: 20),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(14.00)),
                                        child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse64X64,
                                            height: getSize(28.00),
                                            width: getSize(28.00),
                                            fit: BoxFit.cover))),
                                CustomTextFormField(
                                    width: 299,
                                    focusNode: FocusNode(),
                                    controller: controller.groupFourController,
                                    hintText: "msg_thank_you_that".tr,
                                    variant:
                                        TextFormFieldVariant.FillBlack90007,
                                    fontStyle:
                                        TextFormFieldFontStyle.RobotoRegular13,
                                    textInputAction: TextInputAction.done)
                              ]))
                    ]))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              controller.type.value = type;
            })));
  }

  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Imghome:
        return getDefaultWidget();
      case BottomBarEnum.Imgsearch:
        return getDefaultWidget();
      case BottomBarEnum.Imggrid:
        return DiscoverOverflowBehaviorPage();
      case BottomBarEnum.Imglightbulb:
        return getDefaultWidget();
      case BottomBarEnum.Imguser:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
