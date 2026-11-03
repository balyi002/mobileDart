import 'dart:io';

List<int> ingresarNumeros() {
  List<int> numeros = [];
  print('Ingrese 10 números:');
  for (int i = 0; i < 10; i++) {
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }
  return numeros;
}

double calcularPromedio(List<int> numeros) {
  int suma = 0;
  for (int n in numeros) {
    suma += n;
  }
  return suma / numeros.length;
}

int obtenerMayor(List<int> numeros) {
  int mayor = numeros[0];
  for (int n in numeros) {
    if (n > mayor) {
      mayor = n;
    }
  }
  return mayor;
}

int obtenerMenor(List<int> numeros) {
  int menor = numeros[0];
  for (int n in numeros) {
    if (n < menor) {
      menor = n;
    }
  }
  return menor;
}

void buscarNumero(List<int> numeros) {
  stdout.write('Ingrese número a buscar: ');
  int objetivo = int.parse(stdin.readLineSync()!);

  List<int> posiciones = [];
  for (int i = 0; i < numeros.length; i++) {
    if (numeros[i] == objetivo) {
      posiciones.add(i);
    }
  }

  if (posiciones.isNotEmpty) {
    print('El número existe.');
    print('Aparece ${posiciones.length} veces.');
    print('Posiciones: ${posiciones.join(", ")}');
  } else {
    print('El número no existe.');
  }
}

void main() {
  List<int> numeros = ingresarNumeros();

  int positivos = 0;
  int negativos = 0;
  int ceros = 0;
  int pares = 0;
  int impares = 0;
  int suma = 0;

  for (int n in numeros) {
    if (n > 0) {
      positivos++;
    } else if (n < 0) {
      negativos++;
    } else {
      ceros++;
    }

    if (n % 2 == 0) {
      pares++;
    } else {
      impares++;
    }

    suma += n;
  }

  double promedio = calcularPromedio(numeros);
  int mayor = obtenerMayor(numeros);
  int menor = obtenerMenor(numeros);

  List<int> mayoresPromedio = [];
  List<int> menoresPromedio = [];
  Set<int> vistos = {};
  Set<int> repetidos = {};

  for (int n in numeros) {
    if (n > promedio) mayoresPromedio.add(n);
    if (n < promedio) menoresPromedio.add(n);

    if (vistos.contains(n)) {
      repetidos.add(n);
    } else {
      vistos.add(n);
    }
  }

  print('\nRESULTADOS');
  print('Positivos: $positivos');
  print('Negativos: $negativos');
  print('Ceros: $ceros');
  print('Pares: $pares');
  print('Impares: $impares');
  print('Suma: $suma');
  print('Promedio: $promedio');
  print('Mayor: $mayor');
  print('Menor: $menor');
  print('Mayores al promedio: ${mayoresPromedio.join(", ")}');
  print('Menores al promedio: ${menoresPromedio.join(", ")}');
  print('Repetidos: ${repetidos.join(", ")}');
  print('');

  buscarNumero(numeros);
}
