void main(){
  final String name = "Deiby";
  Greet(name, 'Welcome to Flutter');
}

Greet(name, [message = "Welcome to Dart"]){ // Function con parámetro opcional
  print("$message $name");
}
