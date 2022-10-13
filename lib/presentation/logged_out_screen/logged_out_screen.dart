import 'controller/logged_out_controller.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/widgets/custom_button.dart';

class LoggedOutScreen extends GetWidget<LoggedOutController> {
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(663.00),
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle,
                                            height: getVerticalSize(663.00),
                                            width: getHorizontalSize(375.00))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 16,
                                                top: 20,
                                                right: 16,
                                                bottom: 20),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 10),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        getSize(
                                                                            38.00),
                                                                    width: getSize(
                                                                        38.00),
                                                                    margin: getMargin(
                                                                        top: 5,
                                                                        bottom:
                                                                            11),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: CommonImageView(imagePath: ImageConstant.imgUnion38X38, height: getSize(38.00), width: getSize(38.00))),
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: CommonImageView(svgPath: ImageConstant.imgUnion, height: getSize(38.00), width: getSize(38.00)))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            20),
                                                                    child: Text(
                                                                        "lbl_photo"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtComfortaaRegular48))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 297,
                                                              right: 10),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(getHorizontalSize(
                                                                            14.00)),
                                                                    child: CommonImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgEllipse,
                                                                        height: getSize(
                                                                            28.00),
                                                                        width: getSize(
                                                                            28.00),
                                                                        fit: BoxFit
                                                                            .cover)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 8,
                                                                        top: 1),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                              "msg_pawel_czerwinsk".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoBold13),
                                                                          Padding(
                                                                              padding: getPadding(top: 3, right: 7),
                                                                              child: Text("msg_pawel_czerwins".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular11))
                                                                        ]))
                                                              ])))
                                                ])))
                                  ]))),
                      Padding(
                          padding: getPadding(
                              left: 16, top: 20, right: 16, bottom: 33),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomButton(
                                    width: 167,
                                    text: "lbl_log_in".tr.toUpperCase(),
                                    onTap: onTapBtnLogin),
                                Container(
                                    height: getVerticalSize(52.00),
                                    width: getHorizontalSize(167.00),
                                    margin: getMargin(left: 9),
                                    child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 51,
                                                      top: 3,
                                                      right: 51,
                                                      bottom: 10),
                                                  child: Text(
                                                      "lbl_register"
                                                          .tr
                                                          .toUpperCase(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProTextBold13))),
                                          CustomButton(
                                              width: 167,
                                              text: "lbl_register"
                                                  .tr
                                                  .toUpperCase(),
                                              variant:
                                                  ButtonVariant.FillBlack900,
                                              fontStyle: ButtonFontStyle
                                                  .RobotoBlack13WhiteA700,
                                              onTap: onTapBtnRegister,
                                              alignment: Alignment.centerLeft)
                                        ]))
                              ]))
                    ])))));
  }

  onTapBtnLogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapBtnRegister() {
    Get.toNamed(AppRoutes.registerStep1Screen);
  }
}
