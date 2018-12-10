class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  /*
    factory を使うときは名前がかぶるので、このコンストラクタは使えない。
  Logger(String name) { }
  */

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      print('cache hit');
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

void main() {
  var uiLogger = Logger('UI');
  uiLogger.log('unko');

  var uiLogger2 = Logger('UI');

  uiLogger2.log('unko');
}
