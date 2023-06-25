import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TecnicoAddView extends GetView {
  const TecnicoAddView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TecnicoAddView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TecnicoAddView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
