/*
Create the class product.
Attributes: id, name, price, stock.
Constructor.
@overrride
method to print the price increment in 10%

Test the class with 2 objects

*/

void main() {
  final product1 = new Product(id: 01, name: 'Manzana', price: 2000, stock: 12);
  final product2 = new Product(id: 02, name: 'Pera', price: 1500, stock: 8);

  print(product1);
  print(product2);
}

class Product {
  int? id;
  String? name;
  double? price;
  int? stock;

  Product({this.id, this.name, this.price, this.stock});

  @override
  String toString() {
    double currentPrice = price ?? 0.0;
    double iva = currentPrice * 0.1;
    double finalPrice = iva + currentPrice;
    return 'El precio del producto $name con impuesto es $finalPrice';
  }
}
