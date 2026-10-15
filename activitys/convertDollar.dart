/*
Create a function to convert COP to USD.
Use opcional params in price dollar
*/

void main (){
  double priceDollar = 3200;
  double cop = 15000;

  double convert = cop / priceDollar;

  DollarConvert(convert, "Dolares totales");
}

DollarConvert(double convert, [String message = "sin datos colocados"]){
  print("${convert.toStringAsFixed(2)} $message");
}