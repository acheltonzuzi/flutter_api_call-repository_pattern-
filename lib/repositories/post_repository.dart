import 'dart:convert';

import 'package:api_call_tutorial/models/posts_model.dart';
import 'package:http/http.dart' as http;

class PostRepository {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
   Future<List<Post>> fetchPosts() async {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> json = jsonDecode(response.body);
      return json.map((e) => Post.fromJson(e)).toList();
    } else {
      throw Exception('Falha ao carregar os posts');
    }
  }
}
