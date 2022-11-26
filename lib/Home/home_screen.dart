import 'package:apptodolist/Home/components/float_button.dart';
import 'package:apptodolist/Lists/list_screen.dart';
import 'package:apptodolist/Tasks/task_screen.dart';
import 'package:apptodolist/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int initialPage = 0;
  late PageController pc;

  @override
  void initState() {
    // TODO: implement initState
    pc = PageController(initialPage: initialPage);
  }

  setPage(page) {
    setState(() {
      initialPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: bgColor,
            size: 30,
          ),
          onPressed: () {},
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: PageView(
        controller: pc,
        children: [TaskScreen(), ListScreen()],
        onPageChanged: setPage,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: initialPage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.task_alt), label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Lists'),
        ],
        onTap: (page) {
          pc.animateToPage(page,
              duration: Duration(milliseconds: 400), curve: Curves.decelerate);
        },
      ),
      floatingActionButton: FloatButtonCompoent(),
    );
  }
}
