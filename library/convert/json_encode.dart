import 'dart:convert';

void main() {
  Map<String, dynamic> jsonData = {
    'name': 'mario',
    'age': 22,
  };
  
  String jsonString = json.encode(jsonData);

  print(jsonString);
}
