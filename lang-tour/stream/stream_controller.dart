import 'dart:async';

class Unko {
  final a = StreamController<int>();

  Function(int) get add => a.sink.add;

  Unko() {
    a.onListen = () => print("a");

    a.stream.listen((count) => print(count));
  }

  @override
  String toString() => "unko";
}

void main() async {
  var unko = Unko();
  unko.add(1);
  print(unko);
}
