import 'package:get/get.dart';

import '../controllers/tecnico_controller.dart';

class TecnicoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TecnicoController>(
      () => TecnicoController(),
    );
  }
}
