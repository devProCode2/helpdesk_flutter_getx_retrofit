import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/cliente_controller.dart';

class ClienteListView extends GetView<ClienteController> {
  const ClienteListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClienteListView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ClienteListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
