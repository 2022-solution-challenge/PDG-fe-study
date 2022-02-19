
class User {
  final int? user_id;
  final int? id;
  final String? title;
  final String? body;

  User({this.user_id, this.id, this.title, this.body});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      user_id: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}