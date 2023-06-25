import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ChamadoEditView extends GetView {
  const ChamadoEditView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChamadoEditView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ChamadoEditView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
