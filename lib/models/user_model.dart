class User {
  late String _surname;
  late String _name;

  User({String name = 'Максим', String surname = 'Бредюк'}) {
    _name = name;
    _surname = surname;
  }

  String get nameUser => _name;
  set nameUser(String name) => _name = name;

  String get surnameUser => _surname;
  set surnameUser(String surname) => _surname = surname;
}
