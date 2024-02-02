class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayDetails() {
    print('Name: $name\nAge: $age');
  }
}

class Employee extends Person {
  String employeeId;

  Employee(String name, int age, this.employeeId) : super(name, age);

  void displayEmployeeDetails() {
    super.displayDetails();
    print('Employee ID: $employeeId');
  }
}

void main() {
  Employee employee = Employee('Eddy', 28, 'Ed123');

  employee.displayEmployeeDetails();
}
