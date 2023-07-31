import 'package:flutter/material.dart';
import 'package:sololearn_clone/components/certificate.dart';
import 'package:sololearn_clone/model/intro_py.dart';
import 'package:sololearn_clone/model/lessons.dart';
import 'package:sololearn_clone/utilities/icon.dart';
import 'package:sololearn_clone/utilities/tile.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // container of power, model, and hearts
        const Card(
          color: Color.fromARGB(255, 49, 55, 59),
          elevation: 10,
          child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // power
                MyIcon(
                  iconHeight: 30,
                  iconText: '5',
                  iconPath: 'lib/icons/flash.png',
                ),
                // cubes
                MyIcon(
                  iconHeight: 30,
                  iconText: '65',
                  iconPath: 'lib/icons/model.png',
                ),
                // heart
                MyIcon(
                  iconHeight: 30,
                  iconText: '3',
                  iconPath: 'lib/icons/heart.png',
                ),
              ],
            ),
          ),
        ),

        // listview of things to learn
        Expanded(
          child: ListView.separated(
            itemCount: 5,
            itemBuilder: (context, index) {
              // get lesson name and is it locked
              IntroPython introPython = Lessons().getLessons()[index];
              return MyTile(
                introPython: introPython,
              );
            },
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  color: Colors.grey,
                ),
              );
            },
          ),
        ),
        const Certificate(),
      ],
    );
  }
}
