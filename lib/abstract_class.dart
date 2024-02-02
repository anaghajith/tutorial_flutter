abstract class Shape {
  double calculateArea();

  void display() {}
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  Circle circle = Circle(4);
  Square square = Square(2);

  circle.display();
  print('Area of Circle: ${circle.calculateArea()}');

  square.display();
  print('Area of Square: ${square.calculateArea()}');
}
