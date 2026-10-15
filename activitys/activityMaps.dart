// Ejercicio: Crear 2 mapas con los datos de 2 entidades de su proyecto e imprimir los datos.

void main(){

  Map Proveedores = {
    'id':001,
    'name':'Soluciones APA',
    'categoria':'servicios Generales',
    'activo':true
  };

  Map Productos = {
    'id':001,
    'name':'Globos R12 x12 unidades',
    'costo':2000,
    'precio':3200,
    'cantidad':50,
    'activo':true
  };

  print(Proveedores);
  print(Productos);

}
