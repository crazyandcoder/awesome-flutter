import 'package:flutter/material.dart';
class ArguementRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var arguement=ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("back"),
      ),

      body: Center(
        child: Text(arguement),
      ),
    );
  }

}