void main(){
  print("Inicio del programa");
  getAdd().then((result){
    print('$result');
  }).catchError((error){
    print('Error: $error');
  }).whenComplete((){
    print('Proceso Completado');
  });
  print("Fin del programa");
}

Future<String> getAdd(){
  return Future.delayed(Duration(seconds: 5), (){
    // Simulando una operacion asincronica que tarda 5 segundos en ejecutarse
  int add = 0;
  for(int i = 0; i < 1000; i++){ // Contador
    add+=i; // acumulador
  };

  return '$add';
  });
}