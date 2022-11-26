import 'package:apptodolist/model/todo_model.dart';

class SingleTaskModel extends Task {
  DateTime data;
  bool isdone;

  SingleTaskModel({id, title, required this.data, this.isdone = false})
      : super(id: id, title: title);
}
