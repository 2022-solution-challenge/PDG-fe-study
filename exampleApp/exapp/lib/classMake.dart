class User {
  final int user_id;
  final int id;
  final String title;
  final String body;

  const User({
    required this.user_id,
    required this.id,
    required this.title,
    required this.body,
  });
  
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      user_id: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}