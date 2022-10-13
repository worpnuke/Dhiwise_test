import '../controller/discover_overflow_behavior_controller.dart';
import '../models/listellipse_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';

// ignore: must_be_immutable
class ListellipseItemWidget extends StatelessWidget {
  ListellipseItemWidget(this.listellipseItemModelObj);

  ListellipseItemModel listellipseItemModelObj;

  var controller = Get.find<DiscoverOverflowBehaviorController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 230,
          bottom: 1,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  14.00,
                ),
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgEllipse28X28,
                height: getSize(
                  28.00,
                ),
                width: getSize(
                  28.00,
                ),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 8,
                top: 1,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_ridhwan_nordin".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoBold13,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                      right: 10,
                    ),
                    child: Text(
                      "lbl_ridzjcob".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular11,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
