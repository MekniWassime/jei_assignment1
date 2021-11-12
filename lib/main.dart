import 'package:flutter/material.dart';
import 'package:jei_assignment1/Screens/cv_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.blackHelsinki
                .copyWith(
                    headline4: Typography.blackHelsinki.headline4!.copyWith(
                        color: Color(0xff081451),
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
                .apply(bodyColor: Color(0xff5666ad))),
        home: CVScreen());
  }
}
