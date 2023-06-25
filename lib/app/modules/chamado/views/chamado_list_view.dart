import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/chamado_controller.dart';

class ChamadoListView extends GetView<ChamadoController> {
  const ChamadoListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChamadoView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ChamadoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
