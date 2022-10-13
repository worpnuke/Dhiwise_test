import '../chats_screen/widgets/chats_item_widget.dart';
import 'controller/chats_controller.dart';
import 'models/chats_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/discover_overflow_behavior_page/discover_overflow_behavior_page.dart';
import 'package:test/widgets/custom_bottom_bar.dart';
import 'package:test/widgets/custom_button.dart';

class ChatsScreen extends GetWidget<ChatsController> {
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      CustomButton(
                          width: 375,
                          text: "lbl_chats".tr,
                          variant: ButtonVariant.OutlineBlack9004c,
                          shape: ButtonShape.Square,
                          fontStyle: ButtonFontStyle.SFProTextSemibold17),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 16, right: 16),
                              child: Obx(() => ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return Container(
                                        height: getVerticalSize(0.50),
                                        width: size.width,
                                        decoration: BoxDecoration(
                                            color: ColorConstant.black9004c));
                                  },
                                  itemCount: controller
                                      .chatsModelObj.value.chatsItemList.length,
                                  itemBuilder: (context, index) {
                                    ChatsItemModel model = controller
                                        .chatsModelObj
                                        .value
                                        .chatsItemList[index];
                                    return ChatsItemWidget(model,
                                        onTapRowellipse: onTapRowellipse);
                                  })))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          margin: getMargin(top: 19),
                          decoration:
                              BoxDecoration(color: ColorConstant.black9004c))
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

  onTapRowellipse() {
    Get.toNamed(AppRoutes.individualChatScreen);
  }
}
