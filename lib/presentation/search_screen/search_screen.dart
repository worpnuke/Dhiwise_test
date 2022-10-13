import 'controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/widgets/custom_text_form_field.dart';

class SearchScreen extends GetWidget<SearchController> {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 30,
                    right: 16,
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
                  hintText: "msg_search_all_phot".tr,
                  margin: getMargin(
                    left: 16,
                    top: 37,
                    right: 16,
                    bottom: 20,
                  ),
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
