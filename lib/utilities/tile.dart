import 'package:flutter/material.dart';
import 'package:sololearn_clone/model/intro_py.dart';

// ignore: must_be_immutable
class MyTile extends StatelessWidget {
  IntroPython introPython;
  MyTile({super.key, required this.introPython});

  Widget? locked() {
    Widget? itemToReturn;
    // ignore: unrelated_type_equality_checks
    if (introPython.isLocked == true) {
      itemToReturn = const Icon(
        Icons.lock,
        color: Colors.white,
        size: 35,
      );
      // ignore: unrelated_type_equality_checks
    } else if (introPython.isLocked == false) {
      itemToReturn = Image.asset(
        'lib/icons/checked-checkbox.png',
        height: 35,
      );
    }
    return itemToReturn;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: locked(),
      title: Text(
        introPython.tileText,
        style: TextStyle(
          color: Colors.grey[300],
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.keyboard_arrow_up,
          color: Colors.grey[200],
          size: 30,
        ),
        onPressed: () {},
      ),
    );
  }
}
