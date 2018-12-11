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
}

void main() {
  var smartTV = SmartTelevision();
  smartTV.turnOn();
}
