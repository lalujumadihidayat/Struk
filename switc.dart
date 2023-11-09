import 'dart:io';

class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class ShoppingCart {
  List<Product> _cart = [];

  void addToCart(Product product) {
    _cart.add(product);
  }

  double calculateTotal() {
    double total = 0.0;
    for (var product in _cart) {
      total += product.price;
    }
    return total;
  }

  void checkout() {
    double total = calculateTotal();
    print('Total belanja: \Rp${total.toStringAsFixed(2)}');
    print('Terimakasih telah berbelanja!');
  }
}

void main() {
  var cart = ShoppingCart();

  while (true) {
    print('Pilih tindakan:');
    print('1. Tambah produk ke keranjang');
    print('2. Checkout');
    print('3. Keluar');
    
    var choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print('Masukkan nama produk:');
        var productName = stdin.readLineSync();
        print('Masukkan harga produk:');
        var productPrice = double.parse(stdin.readLineSync()!);
        var product = Product(productName!, productPrice);
        cart.addToCart(product);
        print('$productName ditambahkan ke keranjang.');
        break;
      case 2:
        cart.checkout();
        return;
      case 3:
        return;
      default:
        print('Pilihan tidak valid. Silakan coba lagi.');
    }
  }
}
