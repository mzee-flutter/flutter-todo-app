import 'package:flutter/material.dart';
import 'package:todo_app/task_model.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Add Task here'),
  ];

  List<Task> get task {
    return _tasks;
  }

  int get taskListLength {
    return _tasks.length;
  }

  void addTask(newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
