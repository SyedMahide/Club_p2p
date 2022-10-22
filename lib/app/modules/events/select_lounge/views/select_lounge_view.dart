import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/select_lounge_controller.dart';

class SelectLoungeView extends GetView<SelectLoungeController> {
  const SelectLoungeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectLoungeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SelectLoungeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
