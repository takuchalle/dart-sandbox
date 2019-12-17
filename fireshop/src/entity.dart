abstract class Entity {
  Entity({this.createdAt, updatedAt});

  Entity.fromJson(Map<String, dynamic> json) :
  createdAt = json[EntityField.createdAt] as String,
  updatedAt = json[EntityField.updatedAt] as String;

  String createdAt;
  String updatedAt;
  
  Map<String, dynamic> get timestampJson => <String, dynamic>{
    if (createdAt == null) EntityField.createdAt: "unko",
    EntityField.updatedAt: "unko"
  };

  Map<String, dynamic> toJson() {
    throw UnimplementedError('toJson() is not implemented');
  }
}

class EntityField {
  static const createdAt = 'createdAt';
  static const updatedAt = 'updatedAt';
}
