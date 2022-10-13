import '../controller/search_results_preserve_scroll_position_controller.dart';
import '../models/listrectangletwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';

// ignore: must_be_immutable
class ListrectangletwoItemWidget extends StatelessWidget {
  ListrectangletwoItemWidget(this.listrectangletwoItemModelObj);

  ListrectangletwoItemModel listrectangletwoItemModelObj;

  var controller = Get.find<SearchResultsPreserveScrollPositionController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 5.5,
          bottom: 5.5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            CommonImageView(
              imagePath: ImageConstant.imgRectangle2107X107,
              height: getSize(
                107.00,
              ),
              width: getSize(
                107.00,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 11,
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgRectangle21107X107,
                height: getSize(
                  107.00,
                ),
                width: getSize(
                  107.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 11,
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgRectangle22107X107,
                height: getSize(
                  107.00,
                ),
                width: getSize(
                  107.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
