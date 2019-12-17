import 'dart:core';

import '../fireshop/fireshop.dart';

class User extends Entity {
  User(this.name) : super();

  User.fromJson(Map<String, dynamic> json) :
  name = json[UserField.name] as String,
  super.fromJson(json);

  String name;
  String profileURL;

  @override
  Map<String, dynamic> toJson() => {
    UserField.name: name,
    ...timestampJson
  };

  @override
  String toString() => name;
}

class UserField {
  static const name = 'name';
}

class UserDoc extends Document<User> {
  const UserDoc(String id, User entity, this.c) : super(id, entity);

  const UserDoc.fromId(String id) : this(id, null, 0);

  static const collectionName = 'users';
  
  final int c;

  @override
  String path() {
    return '$collectionName/$id';
  }

  @override
  String toString() => c.toString();
}

class UserConv extends Converter<UserDoc> {
  UserDoc fromJson(Map<String, dynamic> json) {
    return UserDoc(json['id'], null, 2);
  }
}

class UserRef extends Reference<UserDoc> {
  UserRef(UserDoc userDoc, UserConv userConv) : super(userDoc, userConv);
}

main() {
  final userDoc = UserDoc("id", User("unko"), 4);

  print(userDoc);
  print(userDoc.entity.toJson());

  final json = userDoc.entity.toJson();
  final userDoc2 = UserDoc("xxxxxxxxxxxxxx", User.fromJson(json), 3);
  final userConv = UserConv();
  
  final ref = UserRef(userDoc2, userConv);
  ref.save();
  
  print(userDoc2.entity.toJson());
}
