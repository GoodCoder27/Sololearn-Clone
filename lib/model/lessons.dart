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
      isLocked: true,
      tileText: "List",
    ),
    IntroPython(
      isLocked: true,
      tileText: "Fuctions",
    ),
  ];

  List<IntroPython> getLessons() {
    return introPy;
  }

  bool allDone() {
    if (introPy[4].isLocked == true) {
      return true;
    } else {
      return false;
    }
  }

  bool allDone2() {
    if (introPy[4].isLocked == true) {
      return true;
    } else {
      return false;
    }
  }
}
