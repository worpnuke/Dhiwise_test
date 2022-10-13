import '/core/app_export.dart';
import 'package:test/presentation/chats_screen/models/chats_model.dart';
import 'package:test/widgets/custom_bottom_bar.dart';

class ChatsController extends GetxController {
  Rx<ChatsModel> chatsModelObj = ChatsModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Imghome.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
