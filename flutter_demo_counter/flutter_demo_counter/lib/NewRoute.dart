import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: Text("this is a second new page"),
      ),
    );
  }
}
