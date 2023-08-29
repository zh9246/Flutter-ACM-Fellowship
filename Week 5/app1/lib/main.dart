import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
void main() {
  runApp(MyApp());
}

class Task {
  final String title;
  Task(this.title);
}

class TaskList extends ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskList(),
      child: MaterialApp(
        title: 'Provider Example',
        home: TaskListScreen(),
      ),
    );
  }
}

class TaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
      ),
      body: Consumer<TaskList>(
        builder: (context, taskList, child) {
          return ListView.builder(
            itemCount: taskList.tasks.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(taskList.tasks[index].title),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => taskList.removeTask(index),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _AddTask(context),
        child: Icon(Icons.add),
      ),
    );
  }

  void _AddTask(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        String newTaskTitle = '';

        return AlertDialog(
          title: Text('Add New Task'),
          content: TextField(
            onChanged: (value) {
              newTaskTitle = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (newTaskTitle.isNotEmpty) {
                  Provider.of<TaskList>(context, listen: false).addTask(Task(newTaskTitle));
                  Navigator.pop(context);
                }
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}

