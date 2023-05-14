import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinderr/pages/landing/bloc/landing_bloc.dart';
import 'package:jobfinderr/pages/landing/landing.dart';
import 'package:jobfinderr/welcome/welcome.dart';

import 'introduction/introduction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LandingBloc(),
        child: ScreenUtilInit(
          builder: (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
              appBarTheme: AppBarTheme(color: Colors.brown.shade50),
              scaffoldBackgroundColor: Colors.brown.shade50,
            ),
            home: IntroductionPage(),
            routes: {
              "welcomePage": (context) => WelcomePage(),
              "landingPage": (context) => LandingPage(),
            },
          ),
        ));
  }
}
