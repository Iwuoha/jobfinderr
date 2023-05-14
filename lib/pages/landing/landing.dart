import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobfinderr/pages/landing/bloc/landing_state.dart';
import 'package:jobfinderr/pages/landing/landing_widget.dart';

import 'bloc/landing_bloc.dart';
import 'bloc/landing_event.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LandingBloc, LandingState>(builder: (context, state) {
      return Scaffold(
        body: buildPage(state.index),
        bottomNavigationBar: Container(
          height: 70,
          child: BottomNavigationBar(
            selectedItemColor: Colors.orange,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              state.index = value;
              BlocProvider.of<LandingBloc>(context)
                  .add(TriggerLandingEvent(state.index));
              print(value);
            },
            currentIndex: state.index,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(CupertinoIcons.home),
              ),
              BottomNavigationBarItem(
                label: "Explore",
                icon: Icon(CupertinoIcons.search),
              ),
              BottomNavigationBarItem(
                label: "Bookmark",
                icon: Icon(CupertinoIcons.bookmark),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(CupertinoIcons.person),
              ),
            ],
          ),
        ),
      );
    });
  }
}
