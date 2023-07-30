import 'package:flutter/material.dart';
import 'package:sololearn_clone/model/intro_py.dart';

class Lessons extends ChangeNotifier {
  List<IntroPython> introPy = [
    IntroPython(
      isLocked: false,
      tileText: "Getting Started With Python",
    ),
    IntroPython(
      isLocked: false,
      tileText: "Interacting with the User",
    ),
    IntroPython(
      isLocked: false,
      tileText: "Control Flow",
    ),
    IntroPython(
      isLocked: false,
      tileText: "List",
    ),
    IntroPython(
      isLocked: false,
      tileText: "Fuctions",
    ),
  ];

  List<IntroPython> getLessons() {
    return introPy;
  }

  bool allDone() {
    if (introPy == true) {
      return false;
    } else {
      return true;
    }
  }
}
