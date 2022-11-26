import 'package:apptodolist/Repositories/subtask_repositories.dart';
import 'package:apptodolist/model/list_model.dart';
import 'package:apptodolist/model/subtask_model.dart';
import 'package:flutter/material.dart';

class ListRepositories extends ChangeNotifier {
  List<ListModel> _lists = [];

  List<ListModel> get lists => _lists;

  save(int id, List<Subtask> tasks, DateTime date) async {
    final todo = ListModel(id: id, tasks: tasks, date: date);
    lists.add(todo);
    notifyListeners();
  }

  getall() async {}
}
