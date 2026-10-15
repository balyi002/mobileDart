void main(){
  List <int> numbers = [5,21,44,66,76,43,22];
  List <String> numbers2 = [];
  print(numbers);
  numbers.sort(); // Ordenar ascendentemente

  //Almacenar los numeris en la lista numbers2
  // Imprimir la Lista
  for (int numero in numbers){
    numbers2.add(numero.toString());
  }
  print("\nLista de Números 2");
  print(numbers2);
  print("\n");

  print(numbers);
  numbers.add(97);
  print(numbers);

  // print element by element
  for(int i = 0; i < numbers.length; i++){
    print(numbers[i]);
  }
}