abstract class Animal {
  int paws;

  Animal(this.paws);

  void MakeSound();
}

class Dog extends Animal {
  Dog() : super(4);

  @override
  void MakeSound() {
    print('WOW');
  }
}

class Cat extends Animal {
  Cat() : super(4);

  @override
  void MakeSound() {
    print('MIAU');
  }
}

class Cow extends Animal {
  Cow() : super(4);

  @override
  void MakeSound() {
    print('MUUU');
  }
}