import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/transaksi_controller.dart';
import 'produk_view.dart';

class TransaksiView extends GetView<TransaksiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TransaksiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProdukView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => Get.to(() => ProdukView())),
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
