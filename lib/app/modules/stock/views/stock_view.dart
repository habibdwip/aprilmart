import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/stock_controller.dart';

class StockView extends GetView<StockController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StockView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'StockView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
