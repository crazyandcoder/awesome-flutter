import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetImageRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.accessible,
          color: Colors.green,
        ),
        Icon(
          Icons.error,
          color: Colors.green,
        ),
        Icon(
          Icons.fingerprint,
          color: Colors.green,
        ),
      ],
    ));
  }
}
