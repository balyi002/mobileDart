void main(){
  final teacher1 = new Teacher(document:'1111',name:'Deiby'); // Instanciando un Objeto
  print(teacher1);
}

class Teacher{
  String? document;
  String? name;

  Teacher({this.document, this.name});

  @override
  String toString() {
    return 'Teacher(document: $document, name: $name)';
  }
}