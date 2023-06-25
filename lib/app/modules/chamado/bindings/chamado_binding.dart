import 'package:get/get.dart';

import '../controllers/chamado_controller.dart';

class ChamadoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChamadoController>(
      () => ChamadoController(),
    );
  }
}
