import 'package:apptodolist/constants/colors.dart';
import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        //O decoration terá de sair assim que corrigir o bug da sobreposição e do flexible
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        //É o ListTile que não esta respeitando o limite do Component
        child: ListTile(
          onTap: () {
            print('You Clicked me');
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          tileColor: Colors.green,
          leading: const Icon(
            Icons.check_box,
            color: pColor,
          ),
          title: const Text(
            'Check Mail',
            style: TextStyle(
                fontSize: 20,
                color: tdBlack,
                decoration: TextDecoration.lineThrough),
          ),
          subtitle: const Text(
            'wed 27/11/22',
            style: TextStyle(
              fontSize: 10,
              color: tdBlack,
            ),
          ),
          trailing: IconButton(
              icon: const Icon(
                Icons.delete,
                color: Colors.redAccent,
              ),
              onPressed: () {
                print('Delete');
              }),
        ),
      ),
    );
  }
}
