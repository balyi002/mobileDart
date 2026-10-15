void main() async {
  print('Inicio del Programa');
  try {
    String datos = await getAdd();
    print(datos);
  } catch (e) {
    print(e);
  }
  ;

  print('Fin del Programa');
}

Future<String> getAdd() {
  return Future.delayed(Duration(seconds: 5), () {
    // Simulando una operacion asincronica que tarda 5 segundos en ejecutarse
    int add = 0;
    for (int i = 0; i < 1000; i++) { // Contador
      add += i; // acumulador
    };

    return '$add';
  });
}
