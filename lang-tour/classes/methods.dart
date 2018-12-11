import 'dart:math';

class Point {
  num x, y;

  Point(this.x, this.y);

  num distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

void main() {
  var p = Point(1, 2);
  print(p.distanceTo(Point(2,3)));

  var r = Rectangle(1.1, 1, 5, 5.1);
  print(r.right);
  r.right = 7;
  print(r.right);
  r.right++;
  print(r.right);
}
