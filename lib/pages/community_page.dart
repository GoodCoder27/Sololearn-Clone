// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:sololearn_clone/model/feed.dart';
import 'package:sololearn_clone/model/practise.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // tabs practice + feed
          Container(
            child: const TabBar(
              tabs: [
                Tab(text: "Practice"),
                Tab(text: "Feed"),
              ],
              unselectedLabelColor: Colors.grey,
              labelColor: Color.fromARGB(255, 124, 154, 203),
              labelStyle: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // views practice + feed
          Container(
            // Add this to give height
            height: MediaQuery.of(context).size.height - 190,
            child: TabBarView(
              children: [
                Container(
                  child: const Practice(),
                ),
                Container(
                  child: const Feed(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
