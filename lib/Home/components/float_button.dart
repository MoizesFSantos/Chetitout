import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../widgets/botton_sheet.dart';

class FloatButtonCompoent extends StatefulWidget {
  const FloatButtonCompoent({Key? key}) : super(key: key);

  @override
  State<FloatButtonCompoent> createState() => _FloatButtonCompoentState();
}

class _FloatButtonCompoentState extends State<FloatButtonCompoent> {
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      icon: Icons.add,
      activeIcon: Icons.close,
      overlayOpacity: 0.2,
      spacing: 3,
      children: [
        SpeedDialChild(
          child: Icon(
            Icons.task_alt,
            color: Colors.teal,
          ),
          label: 'New Task',
          backgroundColor: Colors.white,
          // onTap: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => NewTask(),
          //     ),
          //   );
          // }
        ),
        SpeedDialChild(
            child: Icon(
              Icons.list,
              color: Colors.teal,
            ),
            label: 'New List',
            backgroundColor: Colors.white,
            onTap: () {}),
      ],
    );
  }
}
