abstract class Shape {
  double area();
  void draw();
}

class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }

  @override
  void draw() {
    print('Drawing a circle');
  }
}

class Square implements Shape {
  double side;

  Square(this.side);

  @override
  double area() {
    return side * side;
  }

  @override
  void draw() {
    print('Drawing a square');
  }
}

void main() {
  var circle = Circle(5.0);
  var square = Square(4.0);

  print('Circle Area: ${circle.area()}');
  circle.draw();

  print('Square Area: ${square.area()}');
  square.draw();
}
