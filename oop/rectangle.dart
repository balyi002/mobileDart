// Desarrollar la clase rectangulo que permita calcular su Area y perímetro

class Rectangle {
  double base;
  double height;

  Rectangle(this.base , this.height);

  double perimeterRectangle(){
    return (base + height) * 2;
  }

  double areaRectangle(){
    return base * height;
  }

  @override
  String toString(){
    return 'El perimetro del rectangulo es ${perimeterRectangle()} y su Área es ${areaRectangle()}';
  }
} 