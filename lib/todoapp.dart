import 'package:flutter/material.dart';
import 'package:provider_todo_app/todoappmodel.dart';
import 'package:provider/provider.dart';

class TodoApp extends StatelessWidget {
  final TextEditingController t1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    TodoModel todos = Provider.of<TodoModel>(context);
    return Container(
      child: Column(
        children: [
          Container(
            child: Expanded(
              child: ListView.builder(
                  itemCount: todos.allTasks.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(todos.allTasks[index].taskTitle),
                      trailing: TextButton(
                          onPressed: () {
                            todos.deleteTask(todos.allTasks[index]);
                          },
                          child: Text("DONE")),
                    );
                  }),
            ),
          ),
          Container(
            child: Row(
              children: [
                Flexible(
                    child: TextField(
                  controller: t1,
                )),
                ElevatedButton(
                  onPressed: () {
                    todos.addTask(Task(taskTitle: t1.text));
                    t1.clear();
                  },
                  child: Text("ADDED"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
