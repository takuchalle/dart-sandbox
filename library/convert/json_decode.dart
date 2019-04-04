import 'dart:convert';

void main() {
  String jsonString = '''
  {"name": "mario", "age": 22}
  ''';
  Map<String, dynamic> jsonData = json.decode(jsonString);

  print(jsonData);
}
