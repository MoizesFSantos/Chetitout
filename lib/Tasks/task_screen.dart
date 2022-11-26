// ignore_for_file: prefer_const_constructors

import 'package:apptodolist/constants/colors.dart';
import '../widgets/todo_item.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 8),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search,
                    color: tdBlack,
                    size: 20,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    maxHeight: 20,
                    minWidth: 25,
                  ),
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(color: tdGrey),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: const BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                ),
              ),
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 50,
                      bottom: 20,
                      left: 20,
                    ),
                    child: Text(
                      'All ToDos',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
