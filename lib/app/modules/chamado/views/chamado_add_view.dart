import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ChamadoAddView extends GetView {
  const ChamadoAddView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChamadoAddView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ChamadoAddView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
