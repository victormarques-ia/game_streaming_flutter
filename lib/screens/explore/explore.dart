import 'package:flutter/material.dart';

import 'package:game_streaming/utils/constants.dart';
import 'package:game_streaming/screens/explore/explore_all.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  Widget currentWidgetView;

  @override
  void initState() {
    super.initState();
    setState(() {
      currentWidgetView = ExploreAll();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 250),
        child: currentWidgetView,
      ),
    );
  }
}
