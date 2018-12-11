class Person {
  final _name;

  Person(this._name);

  String greet(String who) => "Hello, $who. I am $_name.";
}

/* Person が持つ機能をすべて実装する必要がある。
 * Abostact との使い分けがイマイチ分からんな。
 */
class Impostor implements Person {
  get _name => "";

  String greet(String who) => "Hello, $who. Do you know who I am?";
}

String greetBob(Person person) => person.greet("Bob");

void main() {
  print(greetBob(Person("Kathy")));
  print(greetBob(Impostor()));
}
