import '../search_results_preserve_scroll_position_screen/widgets/listrectangletwo_item_widget.dart';
import 'controller/search_results_preserve_scroll_position_controller.dart';
import 'models/listrectangletwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/discover_overflow_behavior_page/discover_overflow_behavior_page.dart';
import 'package:test/widgets/custom_bottom_bar.dart';
import 'package:test/widgets/custom_button.dart';
import 'package:test/widgets/custom_text_form_field.dart';

class SearchResultsPreserveScrollPositionScreen
    extends GetWidget<SearchResultsPreserveScrollPositionController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SingleChildScrollView(
          child: Padding(
            padding: getPadding(
              left: 15,
              top: 30,
              right: 16,
              bottom: 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 1,
                    right: 10,
                  ),
                  child: Text(
                    "lbl_search".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtComfortaaRegular36,
                  ),
                ),
                CustomTextFormField(
                  width: 343,
                  focusNode: FocusNode(),
                  controller: controller.componentController,
                  hintText: "lbl_dogs".tr,
                  margin: getMargin(
                    left: 1,
                    top: 37,
                  ),
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.center,
                ),
                Padding(
                  padding: getPadding(
                    top: 32,
                    right: 10,
                  ),
                  child: Text(
                    "lbl_all_results".tr.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoBlack13.copyWith(
                      letterSpacing: 0.52,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 1,
                      top: 25,
                    ),
                    child: Obx(
                      () => ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller
                            .searchResultsPreserveScrollPositionModelObj
                            .value
                            .listrectangletwoItemList
                            .length,
                        itemBuilder: (context, index) {
                          ListrectangletwoItemModel model = controller
                              .searchResultsPreserveScrollPositionModelObj
                              .value
                              .listrectangletwoItemList[index];
                          return ListrectangletwoItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ),
                CustomButton(
                  width: 343,
                  text: "lbl_see_more".tr.toUpperCase(),
                  margin: getMargin(
                    left: 1,
                    top: 32,
                  ),
                  alignment: Alignment.center,
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
