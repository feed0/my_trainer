class User {
  String? name;
  String? email;
  String? phone;
  String? password;
  String picture;

  User({
    this.name,
    this.email,
    this.phone,
    this.password,
    this.picture = 'assets/images/avatar_default.png',
  });

  static final List<User> users = [
    User(
      email: 'trainee@mail.com',
      password: 'aaa123',
      name: 'Trainee',
      phone: '(31) 94002-8922',
      picture: 'assets/images/avatar1.png',
    ),
    User(
      email: 'trainer@mail.com',
      password: 'aaa123',
      name: 'Trainer',
      phone: '(31) 94002-8933',
      picture: 'assets/images/avatar2.png',
    ),
  ];
}
