
class Square {
  // Attributes
  double height;

  // Constructor
  Square(this.height);

  double getArea() {
    return this.height * this.height;
  }

  @override
  String toString() {
    return 'El cuadrado tiene $height cm en cada uno de sus lados y su Área es ${getArea().toStringAsFixed(2)}';
  }
}

