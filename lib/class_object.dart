class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  Person obj1 = Person('abc', 20);
  Person obj2 = Person('def', 22);
  print('Info:');
  obj1.displayInfo();
  obj2.displayInfo();
}
