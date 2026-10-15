/* Empleando un Future devolver los N primeros terminos de la serie de fibonnaci
Se debe retornar del último al primer termino
Ejemplo: 0,1,1,2,3,5,8,13
Retornar: 138532110 */

void main(){
  print("Inicio del programa");
  fibonnaci().then((result){
    print('$result');
  }).catchError((error){
    print('Error: $error');
  }).whenComplete((){
    print('Proceso Completado');
  });
  print("Fin del programa");

}

Future<String> fibonnaci(){
  return Future.delayed(Duration(seconds: 5), (){

    List<int> numberFibonnaci = [0, 1];
    int numbers = 8;

    for(int i = 2; i < numbers; i++){
      numberFibonnaci.add(numberFibonnaci[i - 1] + numberFibonnaci[i - 2]);
    };

    return numberFibonnaci.reversed.join();
  });

}