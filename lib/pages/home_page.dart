import 'package:flutter/material.dart';
import 'package:sololearn_clone/pages/account_page.dart';
import 'package:sololearn_clone/pages/community_page.dart';
import 'package:sololearn_clone/pages/create_page.dart';
import 'package:sololearn_clone/pages/leaderboard_page.dart';
import 'package:sololearn_clone/pages/learn_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: unused_field
  int _selectedIndex = 0;

  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    // learn
    const LearnPage(),

    // community
    const CommunityPage(),

    // leaderboard
    const LeaderBoardPage(),

    // create
    const CreatePage(),

    // account
    const AccountPage(),
  ];

  Widget whatSelected() {
    if (_selectedIndex == 0) {
      return const Text("Introduction to Python");
    } else if (_selectedIndex == 1) {
      return const Text('Community');
    } else if (_selectedIndex == 2) {
      return const Text('Leaderboard');
    } else if (_selectedIndex == 3) {
      return const Text('Create');
    } else {
      return const Text('Profile');
    }
  }

  Widget? onLearnPage() {
    if (_selectedIndex == 0) {
      return IconButton(
        onPressed: () {},
        icon: const Icon(Icons.expand_more),
      );
    } else {
      return const Text(
        'a',
        style: TextStyle(
          color: Color.fromARGB(255, 0, 120, 188),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: whatSelected(),
        centerTitle: true,
        actions: [
          Row(
            children: [
              onLearnPage()!,
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
              ),
            ],
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 0, 120, 188),
      ),
      backgroundColor: const Color.fromARGB(255, 40, 41, 45),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Learn',
            backgroundColor: Color.fromARGB(255, 47, 56, 58),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Community',
            backgroundColor: Color.fromARGB(255, 47, 56, 58),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events_rounded),
            label: 'LeaderBoard',
            backgroundColor: Color.fromARGB(255, 47, 56, 58),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mode_comment),
            label: 'Create',
            backgroundColor: Color.fromARGB(255, 47, 56, 58),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Account',
            backgroundColor: Color.fromARGB(255, 47, 56, 58),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: (index) => navigationBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
