import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/laporan_controller.dart';

class LaporanView extends GetView<LaporanController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LaporanView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LaporanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
