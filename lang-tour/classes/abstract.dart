abstract class Doer {

  void doSomething();
}

class EffectiveDoer extends Doer {
  void doSomething() {
    print("doSomething");
  }
}

void main() {
  var e = EffectiveDoer();
  e.doSomething();
}
