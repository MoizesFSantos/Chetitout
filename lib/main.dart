import 'package:apptodolist/Repositories/singletask_repositories.dart';
import 'package:apptodolist/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SingleTaskRepository()),
      ],
      child: const App(),
    ),
  );
}
