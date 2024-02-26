import 'package:flutter/material.dart';
import 'package:person/features/users/data/models/todo.dart';
import 'package:person/services/todos_services.dart';

class ToDos extends StatefulWidget {
  const ToDos({super.key});

  @override
  State<ToDos> createState() => _ToDosState();
}

class _ToDosState extends State<ToDos> {
  late Future<List<ToDo>> todos;

  @override
  void initState() {
    super.initState();
    todos = getTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo\'s List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder<List<ToDo>>(
          future: todos,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  ToDo todo = snapshot.data![index];
                  return ListTile(
                    leading: Checkbox(
                      value: todo.isFinished,
                      onChanged: null,
                    ),
                    title: Text(todo.title),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
