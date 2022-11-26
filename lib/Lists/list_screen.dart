// ignore_for_file: prefer_const_constructors

import 'package:apptodolist/constants/colors.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pColor,
      body: Column(
        children: [
          SizedBox(
            height: 56,
          ),
          Flexible(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: const BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
