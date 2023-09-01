import 'package:flutter/material.dart';
import 'package:flutter_application_2/to_do_model.dart';

class ToDoProvider extends ChangeNotifier {
  List<ToDoModel> _todoList = [];

  List<ToDoModel> get toDoList => _todoList;

  addToDo(ToDoModel toDoModel) {
    _todoList.add(toDoModel);
    notifyListeners();
  }
}
