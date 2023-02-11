import 'package:flutter/material.dart';
import 'package:start_flutter/components/my_bottom.dart';

import '../components/my_appbar.dart';
import '../components/my_tabbar.dart';
import '../tabs/recent_tab.dart';
import '../tabs/top_tab.dart';
import '../tabs/trending_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _searchButtonTapped() {}

  List tabOptions = const [
    ["Recent", RecentTab()],
    ["Trending", TrendingTab()],
    ["Top", TopTab()],
  ];

  //
  int _currentBottomIndex = 0;
  void _handleBottomIndexChange(int? index) {
    setState(() {
      _currentBottomIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        bottomNavigationBar: MyBottomBar(
          index: _currentBottomIndex,
          onTap: _handleBottomIndexChange,
        ),
        body: ListView(
          children: [
            MyAppBar(
              title: 'Explore Collections',
              onSearchTap: _searchButtonTapped,
            ),
            SizedBox(
              height: 600,
              child: MyTabBar(tabOptions: tabOptions),
            )
          ],
        ),
      ),
    );
  }
}
