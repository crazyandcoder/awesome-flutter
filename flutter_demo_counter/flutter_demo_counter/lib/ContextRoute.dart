

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContextRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('context test'),
      ),

      body: Container(
        child: Builder(
          builder: (context){

            Scaffold scaffold=context.ancestorWidgetOfExactType(Scaffold);
            return (scaffold.appBar as AppBar).title;

          }
        ),
      ),
    );
  }

}