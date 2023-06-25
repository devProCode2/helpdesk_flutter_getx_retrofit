import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ClienteAddView extends GetView {
  const ClienteAddView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClienteAddView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ClienteAddView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
