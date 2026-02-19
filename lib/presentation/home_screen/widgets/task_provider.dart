import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TaskProvider extends ChangeNotifier {
  List<Map<String, String>> _tasks = [];

  List<Map<String, String>> get tasks => _tasks;

  TaskProvider() {
    loadTasks();
  }

  Future<void> loadTasks() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tasksString = prefs.getString('saved_tasks');
    if (tasksString != null) {
      final List<dynamic> decodedList = jsonDecode(tasksString);
      _tasks = decodedList
          .map((item) => Map<String, String>.from(item))
          .toList();
      notifyListeners();
    }
  }

  void addTask({
    required String title,
    required String description,
    DateTime? date,
    required int priority,
  }) {
    _tasks.add({
      'title': title,
      'description': description,
      if (date != null) 'date': date.toIso8601String(),
      'priority': priority.toString(),
    });
    saveTasks();
  }

  Future<void> saveTasks() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String encodedData = jsonEncode(tasks);
    await prefs.setString('saved_tasks', encodedData);
    notifyListeners();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    saveTasks();
    notifyListeners();
  }
}
