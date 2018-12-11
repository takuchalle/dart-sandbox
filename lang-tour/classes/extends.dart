class Television {
  void turnOn() {
    print("television turn on");
  }
}

class SmartTelevision extends Television {
  @override
  void turnOn() {
    super.turnOn();
    print("smart television turn on");
  }

  @override
  void noSuchMethod(Invocation invocation) {
    print('a ${invocation.memberName}');
  }
}

/* noSuchMethod を使いたいが、思うように動かない */
class CarTelevision  {
  @override
  void noSuchMethod(Invocation invocation) {
    print('a ${invocation.memberName}');
  }
}

void main() {
  var smartTV = SmartTelevision();
  smartTV.turnOn();
  
  var carTV = CarTelevision();
  carTV.unko();
}
