import '../controller/register_step_1_controller.dart';
import 'package:get/get.dart';

class RegisterStep1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterStep1Controller());
  }
}
