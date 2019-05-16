main(List<String> args) {
  print("aa");
  assert(() {
      print("in assert");
      return true;
    }());
}
