import '../discover_overflow_behavior_page/widgets/listellipse_item_widget.dart';
import '../discover_overflow_behavior_page/widgets/staggeredrectangle_item_widget.dart';
import 'controller/discover_overflow_behavior_controller.dart';
import 'models/discover_overflow_behavior_model.dart';
import 'models/listellipse_item_model.dart';
import 'models/staggeredrectangle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:test/core/app_export.dart';
import 'package:test/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class DiscoverOverflowBehaviorPage extends StatelessWidget {
  DiscoverOverflowBehaviorController controller = Get.put(
      DiscoverOverflowBehaviorController(DiscoverOverflowBehaviorModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          decoration: AppDecoration.fillWhiteA700,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 30,
                      bottom: 20,
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
                            "lbl_discover".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtComfortaaRegular36,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 38,
                            right: 10,
                          ),
                          child: Text(
                            "msg_what_s_new_toda".tr.toUpperCase(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoBlack13.copyWith(
                              letterSpacing: 0.52,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(
                            top: 25,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CommonImageView(
                                imagePath: ImageConstant.imgRectangle28,
                                height: getSize(
                                  343.00,
                                ),
                                width: getSize(
                                  343.00,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgRectangle29,
                                  height: getSize(
                                    343.00,
                                  ),
                                  width: getSize(
                                    343.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgRectangle210,
                                  height: getSize(
                                    343.00,
                                  ),
                                  width: getSize(
                                    343.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgRectangle211,
                                  height: getSize(
                                    343.00,
                                  ),
                                  width: getSize(
                                    343.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            44.00,
                          ),
                          width: getHorizontalSize(
                            359.00,
                          ),
                          child: Obx(
                            () => ListView.builder(
                              padding: getPadding(
                                top: 16,
                              ),
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: controller
                                  .discoverOverflowBehaviorModelObj
                                  .value
                                  .listellipseItemList
                                  .length,
                              itemBuilder: (context, index) {
                                ListellipseItemModel model = controller
                                    .discoverOverflowBehaviorModelObj
                                    .value
                                    .listellipseItemList[index];
                                return ListellipseItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 48,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_browse_all".tr.toUpperCase(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoBlack13.copyWith(
                              letterSpacing: 0.52,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 25,
                            right: 10,
                          ),
                          child: Obx(
                            () => StaggeredGridView.countBuilder(
                              shrinkWrap: true,
                              primary: false,
                              crossAxisCount: 4,
                              crossAxisSpacing: getHorizontalSize(
                                9.00,
                              ),
                              mainAxisSpacing: getHorizontalSize(
                                9.00,
                              ),
                              staggeredTileBuilder: (index) {
                                return StaggeredTile.fit(2);
                              },
                              itemCount: controller
                                  .discoverOverflowBehaviorModelObj
                                  .value
                                  .staggeredrectangleItemList
                                  .length,
                              itemBuilder: (context, index) {
                                StaggeredrectangleItemModel model = controller
                                    .discoverOverflowBehaviorModelObj
                                    .value
                                    .staggeredrectangleItemList[index];
                                return StaggeredrectangleItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                        CustomButton(
                          width: 343,
                          text: "lbl_see_more".tr.toUpperCase(),
                          margin: getMargin(
                            top: 32,
                            right: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
