import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  "http://bit.ly/39f0IkW",
                  width: 250,
                  height: 50,
                ),
                Text("明日から使えるカンタン施工管理アプリ"),
                Text("by Flutter"),
              ]
            )
          )
        )
      )
    );
  }
}
