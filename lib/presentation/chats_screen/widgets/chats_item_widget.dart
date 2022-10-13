import '../controller/chats_controller.dart';
import '../models/chats_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';

// ignore: must_be_immutable
class ChatsItemWidget extends StatelessWidget {
  ChatsItemWidget(this.chatsItemModelObj, {this.onTapRowellipse});

  ChatsItemModel chatsItemModelObj;

  var controller = Get.find<ChatsController>();

  VoidCallback? onTapRowellipse;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          onTapRowellipse!();
        },
        child: Padding(
          padding: getPadding(
            top: 18.5,
            right: 69,
            bottom: 18.5,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    32.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgEllipse64X64,
                  height: getSize(
                    64.00,
                  ),
                  width: getSize(
                    64.00,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 1,
                  bottom: 24,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        right: 10,
                      ),
                      child: Text(
                        "lbl_james".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoBold13.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          top: 12,
                        ),
                        child: Text(
                          "msg_thank_you_that".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular13.copyWith(
                            height: 1.00,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
