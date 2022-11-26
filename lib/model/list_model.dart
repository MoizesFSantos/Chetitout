import 'package:apptodolist/model/single_task_model.dart';
import 'package:apptodolist/model/subtask_model.dart';

class ListModel {
  int id;
  List<Subtask> tasks;
  DateTime date;

  ListModel({required this.id, required this.tasks, required this.date});
}
