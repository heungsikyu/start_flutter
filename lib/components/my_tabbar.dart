import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final List tabOptions;
  const MyTabBar({Key? key, required this.tabOptions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
          // unselectedLabelStyle:
          // const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          // labelStyle: const TextStyle(color: Colors.grey, fontSize: 20),
          tabs: [
            Tab(
              child: Text(tabOptions[0][0]),
            ),
            Tab(
              child: Text(tabOptions[1][0]),
            ),
            Tab(
              child: Text(tabOptions[2][0]),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            children: [tabOptions[0][1], tabOptions[1][1], tabOptions[2][1]],
          ),
        ),
      ],
    );
  }
}
