void main(){
  Map <String, dynamic> Persons = {
    'document':1111,
    'name':'Deiby',
    'salary': 100.32,
    'status':true
  };
  
  // print(Persons);
  Persons.addAll({'functions':'Develop in Dart'});
  // print(Persons);
  print(Persons.values.elementAt(0));
}