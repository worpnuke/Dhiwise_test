import '../controller/discover_overflow_behavior_controller.dart';
import '../models/staggeredrectangle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';

// ignore: must_be_immutable
class StaggeredrectangleItemWidget extends StatelessWidget {
  StaggeredrectangleItemWidget(this.staggeredrectangleItemModelObj);

  StaggeredrectangleItemModel staggeredrectangleItemModelObj;

  var controller = Get.find<DiscoverOverflowBehaviorController>();

  @override
  Widget build(BuildContext context) {
    return CommonImageView(
      imagePath: ImageConstant.imgRectangle2,
      height: getVerticalSize(
        220.00,
      ),
      width: getHorizontalSize(
        167.00,
      ),
    );
  }
}
