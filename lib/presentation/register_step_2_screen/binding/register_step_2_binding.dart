import '../controller/register_step_2_controller.dart';
import 'package:get/get.dart';

class RegisterStep2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterStep2Controller());
  }
}
