import 'package:apptodolist/database/db.dart';
import 'package:apptodolist/model/single_task_model.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class SingleTaskRepository extends ChangeNotifier {
  late Database db;
  List<SingleTaskModel> _task = [];
  List<SingleTaskModel> get task => _task;

  SingleTaskRepository() {
    _initRepository();
  }

  _initRepository() async {
    await _getTask();
  }

  _getTask() async {
    db = await DB.instance.database;
    List task = await db.query('tasks');
    notifyListeners();
  }

  save(String title, DateTime data) async {
    db = await DB.instance.database;
    db.update('tasks', {'title': title, 'data': data, 'isdone': 0});
    // final todo = SingleTaskModel(title: title, data: data, isdone: false);
    // task.add(todo);

    notifyListeners();
  }
}
