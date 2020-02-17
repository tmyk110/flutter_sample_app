import 'package:flutter/material.dart';
import 'ui/screens/andpad_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AndpadScreen(),
      routes: <String, WidgetBuilder> {
        '/andpad': (BuildContext context) => new AndpadScreen(),
      },
    );
  }
}
