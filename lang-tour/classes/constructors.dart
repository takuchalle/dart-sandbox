class Point {
  num x, y;

  Point(num x, num y) : assert(x > 0), assert(y > 0) {
    // There's a better way to do this, stay tuned.
    this.x = x;
    this.y = y;
  }

  // 違う名前でもコンストラクタを作れる
  Point.origin() {
    x = 0;
    y = 0;
  }

  Point.fromJson(Map<String, num> json)
    : x = json['x'], y = json['y'] {
      print('In Point.fromJson(): ($x, $y)');
  }
}

class Point2 {
  num x, y, z;
  /* メンバに代入するだけだったら、これでも書ける */
  /* この場合、 z は null のまま */
  Point2(this.x, this.y);
}

/* 変更不可能なクラス */
class ImmutablePoint {
  final num x,y;
  // final じゃないメンバが一個でもあるとダメ
  // num z;
  
  const ImmutablePoint(this.x, this.y);
}

void main() {
  var p = Point(2,2);
  var p1 = Point.origin();
  var p2 = Point2(2,2);
  var p3 = Point.fromJson({'x': 1, 'y': 2});

  var i = const ImmutablePoint(2,2);
}
