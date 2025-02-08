import 'package:flutter/material.dart';
import 'package:flutter_app/models/task_model.dart';


class SaveTask extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(title: 'Learn Flutter', description: "Smth", isCompleted: true),
  ];

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }

  void checkTask(int index) {
    tasks[index].isDone();
    notifyListeners();
  }
}