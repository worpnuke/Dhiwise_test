import '../controller/profile_controller.dart';
import '../models/profile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(this.profileItemModelObj);

  ProfileItemModel profileItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: CommonImageView(
        imagePath: ImageConstant.imgRectangle22310X167,
        height: getVerticalSize(
          310.00,
        ),
        width: getHorizontalSize(
          167.00,
        ),
      ),
    );
  }
}
