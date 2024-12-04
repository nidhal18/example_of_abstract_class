// abstract class

abstract class Shape {
  // abstract method (no implementation)
  double area();

  // abstract method (no implementation)
  double perimeter();

  // concrete method (has implementation)
  void display() {
    print("calculating shape properties...");
  }
}

// a class that extends the abstract class and implements the abstract methods
class Rectangle extends Shape {
  double width, height;

  // constructor
  Rectangle(this.width, this.height);

  //implementing the abstract methods
  @override
  double area() {
    return width * height;
  }

  @override
  double perimeter() {
    return 2 * (width + height);
  }
}

// another class that extends the abstract class and implements the abstract methods
class Circle extends Shape {
  double radius;

  // constructor
  Circle(this.radius);

  // implementing the abstract methods
  @override
  double area() {
    return 3.14 * radius * radius;
  }

  @override
  double perimeter() {
    return 2 * 3.14 * radius;
  }
}

void main() {
  // create a rectangle object
  Rectangle rectangle = Rectangle(5, 10);
  rectangle.display();
  print('Rectangle Area: ${rectangle.area()}');
  print('Rectangle perimeter: ${rectangle.perimeter()}');

  // create a circle object
  Circle circle = Circle(7);
  circle.display();
  print('Circle perimeter: ${circle.perimeter()}');
}
