import 'package:flutter/material.dart';
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
  String doneCourse() {
    if (Lessons().allDone() == true) {
      return 'Your certificate is close keep learning';
    } else {
      return 'The certificate is ready to claim for you. You did amazing job in the course and earned it';
    }
  }

  String doneCourse2() {
    if (Lessons().allDone2() == true) {
      return 'You are doing great! Keep learning to unclock your certificate';
    } else {
      return 'Well done!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottom nav bar
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 49, 55, 59),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.school,
                    color: Colors.grey,
                  ),
                ),
                const Text(
                  'Learn',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.groups,
                    color: Colors.grey,
                  ),
                ),
                const Text(
                  'Community',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.emoji_events,
                    color: Colors.grey,
                  ),
                ),
                const Text(
                  'Leaderboard',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chat_bubble,
                    color: Colors.grey,
                  ),
                ),
                const Text(
                  'Create',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_sharp,
                    color: Colors.grey,
                  ),
                ),
                const Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 40, 41, 45),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 120, 188),
        title: const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            'Introduction To Python',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        actions: const [
          Icon(Icons.expand_more_outlined),
          SizedBox(width: 10),
          Icon(Icons.notifications),
          SizedBox(width: 5),
          Icon(Icons.more_horiz),
          SizedBox(height: 5),
        ],
      ),
      body: Column(
        children: [
          Card(
            elevation: 15,
            child: Container(
              color: const Color.fromARGB(255, 49, 55, 59),
              height: 50,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // streak
                  MyIcon(
                    iconHeight: 30,
                    iconText: '5',
                    iconPath: 'lib/icons/flash.png',
                  ),

                  // cubes
                  MyIcon(
                    iconHeight: 40,
                    iconText: '65',
                    iconPath: 'lib/icons/model.png',
                  ),

                  // hearts
                  MyIcon(
                    iconHeight: 30,
                    iconText: ' 3',
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
          // certificate
          Card(
            color: const Color.fromARGB(255, 49, 55, 59),
            child: Column(
              children: [
                Image.asset(
                  'lib/icons/certificate.png',
                  height: 80,
                  fit: BoxFit.fill,
                  width: 90,
                ),
                Text(
                  doneCourse(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  doneCourse2(),
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
