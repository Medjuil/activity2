import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:person/features/users/data/models/todo.dart';

Future<List<ToDo>> getTodos() async {
  final response = await http.get(Uri.parse('http://10.0.2.2:3000/todos'));

  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.body);
    return data.map((e) => ToDo.fromJson(e)).toList();
  } else {
    throw Exception('Failed to load the users API');
  }
}
