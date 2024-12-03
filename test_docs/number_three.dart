void main() {
   Rectangle rectangle = Rectangle(20, 5);
  print('Rectangle: ${rectangle.calculateArea()}');
  
  Circle circle = Circle(9);
  print('Circle: ${circle.calculateArea()}');
}

class Rectangle {
  double length;
  double width;
  Rectangle(this.length, this.width);
  double calculateArea() {
    return length * width;
  }
}

class Circle {
  double radius;
  Circle(this.radius);
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}


