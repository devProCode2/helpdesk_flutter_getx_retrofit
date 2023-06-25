import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ClienteEditView extends GetView {
  const ClienteEditView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClienteEditView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ClienteEditView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
