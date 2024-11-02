class User implements Comparable<User> {
  final String name;
  final int personalID;
  final int age;

  User(this.personalID, this.name, this.age);

  @override
  int compareTo(User other) {
    return personalID.compareTo(other.personalID);
  }

  String toString() => 'user ID: $personalID, username is: $name';
}

void main() {
  final userDataBase = [
    User(1, 'Іван', 25),
    User(3, 'Марія', 30),
    User(101, 'Олег', 22),
    User(999, 'Анна', 28),
    User(589, 'Сергій', 35),
    User(5, 'Катерина', 27),
    User(10, 'Андрій', 32),
    User(2, 'Оксана', 29),
    User(0, 'Дмитро', 40),
    User(18, 'Наталія', 26),
  ];

  userDataBase.sort();
  print(userDataBase);
}
