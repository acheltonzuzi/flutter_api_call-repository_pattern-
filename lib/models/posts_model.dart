class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  // Construtor
  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  // Método para desserializar JSON para um objeto Post
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  // Método para serializar um objeto Post para JSON
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }
}
