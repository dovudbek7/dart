import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async {
  final post = await fetchPost();

  print(post.title);
  print(post.userId);
}

Future<Post> fetchPost() async {
  var uri = Uri.https('jsonplaceholder.typicode.com', '/posts/1');

  final response = await http.get(uri);

  Map<String, dynamic> data = convert.jsonDecode(response.body);

  return Post(data["title"], data["userId"]);
}

class Post {
  String title;
  int userId;

  Post(this.title, this.userId);
}
