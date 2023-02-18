import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'produk_model.dart';

class ProdukView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ProdukView'),
          centerTitle: true,
        ),
        body: Column(
          children: [KatalogProduk(), TotalView()],
        ));
  }
}

class KatalogProduk extends StatelessWidget {
  const KatalogProduk({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 500,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: Product.produk.length,
            itemBuilder: (BuildContext context, int index) {
              return KatalogProdukCard(index: index);
            }));
  }
}

class KatalogProdukCard extends StatefulWidget {
  final int index;
  KatalogProdukCard({super.key, required this.index});

  @override
  State<KatalogProdukCard> createState() => _KatalogProdukCardState();
}

class _KatalogProdukCardState extends State<KatalogProdukCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(Product.produk[widget.index].gambar),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
              child: Text(
            Product.produk[widget.index].nama,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )),
          Expanded(child: Text('${Product.produk[widget.index].harga}')),
          InkWell(
            onTap: () {
              setState(
                () {
                  if (Product.produk[widget.index].qty == 0) {
                    Get.snackbar("Kuantitas", "Produk sudah kosong");
                  } else {
                    Product.produk[widget.index].qty--;
                  }
                },
              );
            },
            child: Icon(Icons.remove),
          ),
          Text(Product.produk[widget.index].qty.toString()),
          InkWell(
            onTap: () {
              setState(
                () {
                  Product.produk[widget.index].qty++;
                },
              );
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class TotalView extends StatelessWidget {
  const TotalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 75),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Total',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Text('Total',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
