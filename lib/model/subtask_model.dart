import 'package:apptodolist/model/todo_model.dart';

class Subtask extends Task {
  bool isDone;

  Subtask({id, title, this.isDone = false}) : super(id: id, title: title);
}
