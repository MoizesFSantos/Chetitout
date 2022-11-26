import 'package:apptodolist/model/subtask_model.dart';
import 'package:flutter/material.dart';

class SubTasksRepository extends ChangeNotifier {
  List<Subtask> _subtask = [];
  List<Subtask> get subtask => _subtask;

  savetask(String title) async {
    final stodo = Subtask(title: title);
    subtask.add(stodo);
    notifyListeners();
  }
}
