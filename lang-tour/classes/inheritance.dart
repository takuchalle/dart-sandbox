class Person {
  String firstName;

  Person() {
    print('unnamed');
  }
  
  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Employee extends Person {
  String lastName;
  
  /* Initializer List に親クラスのコンストラクタを呼ぶ*/
  /* Initializer List で指定しない場合は、無名コンストラクタが暗黙的に呼ばれる */
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }
}

void main() {
  var emp = Employee.fromJson({});

  if (emp is Person) {
    // Type check
    emp.firstName = 'Bob';
    print('emp is a Person');
  }
  emp.firstName = 'Bob';
  emp.lastName = 'Unko';
}
