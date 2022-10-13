import '../profile_screen/widgets/profile_item_widget.dart';
import 'controller/profile_controller.dart';
import 'models/profile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/discover_overflow_behavior_page/discover_overflow_behavior_page.dart';
import 'package:test/widgets/custom_bottom_bar.dart';
import 'package:test/widgets/custom_button.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SingleChildScrollView(
          child: Padding(
            padding: getPadding(
              left: 16,
              top: 32,
              right: 16,
              bottom: 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 105,
                      right: 105,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          64.00,
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgEllipse128X128,
                        height: getSize(
                          128.00,
                        ),
                        width: getSize(
                          128.00,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 105,
                      top: 30,
                      right: 105,
                    ),
                    child: Text(
                      "lbl_jane".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtComfortaaRegular36,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 105,
                      top: 24,
                      right: 105,
                    ),
                    child: Text(
                      "msg_san_francisco".tr.toUpperCase(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBlack13.copyWith(
                        letterSpacing: 0.52,
                      ),
                    ),
                  ),
                ),
                CustomButton(
                  width: 343,
                  text: "lbl_follow_jane".tr.toUpperCase(),
                  margin: getMargin(
                    top: 31,
                  ),
                  variant: ButtonVariant.OutlineBlack900_1,
                  fontStyle: ButtonFontStyle.RobotoBlack13WhiteA700,
                ),
                CustomButton(
                  width: 343,
                  text: "lbl_message".tr.toUpperCase(),
                  margin: getMargin(
                    top: 16,
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    859.00,
                  ),
                  width: getHorizontalSize(
                    343.00,
                  ),
                  margin: getMargin(
                    top: 32,
                  ),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: getPadding(
                            right: 10,
                            bottom: 10,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgRectangle2220X167,
                            height: getVerticalSize(
                              220.00,
                            ),
                            width: getHorizontalSize(
                              167.00,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: getVerticalSize(
                            859.00,
                          ),
                          width: getHorizontalSize(
                            343.00,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: getPadding(
                                    left: 10,
                                    bottom: 10,
                                  ),
                                  child: CommonImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle21310X167,
                                    height: getVerticalSize(
                                      310.00,
                                    ),
                                    width: getHorizontalSize(
                                      167.00,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Obx(
                                  () => StaggeredGridView.countBuilder(
                                    shrinkWrap: true,
                                    primary: false,
                                    crossAxisCount: 2,
                                    crossAxisSpacing: getHorizontalSize(
                                      9.00,
                                    ),
                                    mainAxisSpacing: getHorizontalSize(
                                      9.00,
                                    ),
                                    staggeredTileBuilder: (index) {
                                      return StaggeredTile.fit(2);
                                    },
                                    itemCount: controller.profileModelObj.value
                                        .profileItemList.length,
                                    itemBuilder: (context, index) {
                                      ProfileItemModel model = controller
                                          .profileModelObj
                                          .value
                                          .profileItemList[index];
                                      return ProfileItemWidget(
                                        model,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  width: 343,
                  text: "lbl_see_more".tr.toUpperCase(),
                  margin: getMargin(
                    top: 32,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            controller.type.value = type;
          },
        ),
      ),
    );
  }

  ///Handling view based on bottom click actions
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
