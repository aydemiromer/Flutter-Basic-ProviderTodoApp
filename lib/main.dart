import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_todo_app/todoapp.dart';
import 'package:provider_todo_app/todoappmodel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodoModel>(
      create: (context) => TodoModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: Text("To-doApp"),
          ),
          body: TodoApp(),
        ),
      ),
    );
  }
}
