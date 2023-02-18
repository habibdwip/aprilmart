class Product {
  final String nama;
  final double harga;
  final String gambar;
  int qty;

  Product({
    required this.nama,
    required this.harga,
    required this.gambar,
    required this.qty,
  });

  static List<Product> produk = [
    Product(
        nama: 'Mie',
        harga: 2000,
        gambar:
            'https://images.unsplash.com/photo-1612929633738-8fe44f7ec841?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80',
        qty: 0),
    Product(
        nama: 'Kopi',
        harga: 3000,
        gambar:
            'https://images.unsplash.com/photo-1559496417-e7f25cb247f3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
        qty: 0),
    Product(
        nama: 'Sabun',
        harga: 5000,
        gambar:
            'https://images.unsplash.com/photo-1607006483702-289fb2c18218?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        qty: 0)
  ];
}
