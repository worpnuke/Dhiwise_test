import 'package:get/get.dart';
import 'search_results_item_model.dart';

class SearchResultsModel {
  RxList<SearchResultsItemModel> searchResultsItemList =
      RxList.filled(5, SearchResultsItemModel());
}
