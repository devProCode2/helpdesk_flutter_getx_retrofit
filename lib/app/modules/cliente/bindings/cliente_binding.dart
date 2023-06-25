import 'package:get/get.dart';

import '../controllers/cliente_controller.dart';

class ClienteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClienteController>(
      () => ClienteController(),
    );
  }
}
