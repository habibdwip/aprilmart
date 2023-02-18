import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('April Mart'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Image.asset(
              'assets/april.png',
              width: 200,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () => Get.toNamed('/transaksi'),
                child: Card(
                  elevation: 20,
                  child: Padding(
                    padding: EdgeInsets.all(45.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height: 8),
                        Icon(
                          Icons.sync_alt,
                          color: Colors.blue,
                          size: 70,
                        ),
                        Text("Transaksi")
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Get.toNamed('/finansial'),
                child: Card(
                  elevation: 20,
                  child: Padding(
                    padding: EdgeInsets.all(45.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height: 8),
                        Icon(
                          Icons.price_change,
                          color: Colors.blue,
                          size: 70,
                        ),
                        Text("Finansial")
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () => Get.toNamed('/stock'),
                child: Card(
                  elevation: 20,
                  child: Padding(
                    padding: EdgeInsets.all(45.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height: 8),
                        Icon(
                          Icons.warehouse,
                          color: Colors.blue,
                          size: 70,
                        ),
                        Text("Stock")
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Get.toNamed('/laporan'),
                child: Card(
                  elevation: 20,
                  child: Padding(
                    padding: EdgeInsets.all(45.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height: 8),
                        Icon(
                          Icons.receipt_long,
                          color: Colors.blue,
                          size: 70,
                        ),
                        Text("Laporan")
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
