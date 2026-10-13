/* Desarrollar la clase descuento que permita calcular el valor del descuento
sabiendo que:
Si la cantidad de productos es superior a 100 el descuento es del 10%
Si la cantidad esta entre 11 y 100 el descuento es del 8.8%
Si la cantiadd esta entre 1 y 10 el descuento es del 1.11%
Si la cantidad es menor o igual a cero mostrar "Cantidad de productos no permitida" */

class Shop {
  String name;
  double price;
  int quantity;
  double discount = 0;

  Shop(this.name, this.price, this.quantity);

  double discountApplied(){
    if (quantity > 100){
      discount = 0.1;
      }  else if (quantity >= 11 && quantity <= 100){
    discount = 0.088;
      }  else if (quantity >= 1 && quantity <= 10){
    discount = 0.0111;
      }  else{
         print('Cantidad de productos no permitida');
         discount = 0.0;
      }
    return discount;
  }

  double subTotalPrice(){
    return price * quantity;
  }

  double finalPrice(){
    return (subTotalPrice() * discountApplied()) + subTotalPrice();
  }

  @override
  String toString(){
    return 'Del producto $name se han comprado $quantity a un precio de $price por unidad, por lo que tiene un descuento de ${discountApplied().toStringAsFixed(3)}%. Precio Final ${finalPrice().toStringAsFixed(2)}';
  }
}