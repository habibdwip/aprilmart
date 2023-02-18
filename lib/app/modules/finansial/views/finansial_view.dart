import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/finansial_controller.dart';

class FinansialView extends GetView<FinansialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finansial'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FinansialView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
