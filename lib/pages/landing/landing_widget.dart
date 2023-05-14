import 'package:flutter/cupertino.dart';

import '../home/home.dart';

Widget buildPage(int index) {
  List<Widget> _widget = [
    HomePage(),
    Center(child: Text("ExplorePage")),
    Center(child: Text("BookmarkPage")),
    Center(child: Text("Profile")),
  ];

  return _widget[index];
}
