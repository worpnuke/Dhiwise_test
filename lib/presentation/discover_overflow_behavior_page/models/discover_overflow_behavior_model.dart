import 'package:get/get.dart';
import 'listellipse_item_model.dart';
import 'staggeredrectangle_item_model.dart';

class DiscoverOverflowBehaviorModel {
  RxList<ListellipseItemModel> listellipseItemList =
      RxList.filled(4, ListellipseItemModel());

  RxList<StaggeredrectangleItemModel> staggeredrectangleItemList =
      RxList.filled(10, StaggeredrectangleItemModel());
}
