import 'controller/discover_overflow_behavior_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/discover_overflow_behavior_page/discover_overflow_behavior_page.dart';
import 'package:test/widgets/custom_bottom_bar.dart';

class DiscoverOverflowBehaviorContainerScreen
    extends GetWidget<DiscoverOverflowBehaviorContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Obx(() => getCurrentWidget(controller.type.value)),
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
}
