import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetButtonRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ButtonState();
  }
}

class ButtonState extends State<WidgetButtonRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Button Test'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              RaisedButton.icon(
                icon: Icon(Icons.send),
                label: Text("发送"),
                onPressed: () => print("RaisedButton click"),
              ),
              RaisedButton(
                child: Text('RaisedButton-normal'),
                onPressed: () => print("RaisedButton click"),
              ),
              FlatButton(
                child: Text('FlatButton-normal'),
                onPressed: () => print("FlatButton click"),
              ),
              OutlineButton(
                child: Text("OutlineButton-normal"),
                onPressed: () => print("OutlineButton click"),
              ),
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () => print("IconButton click"),
              ),
              RaisedButton.icon(
                icon: Icon(Icons.send),
                label: Text("发送"),
                onPressed: () => print("IconButton click"),
              ),
              OutlineButton.icon(
                icon: Icon(Icons.add),
                label: Text("添加"),
                onPressed: () => print("IconButton click"),
              ),
              FlatButton.icon(
                icon: Icon(Icons.info),
                label: Text("详情"),
                onPressed: () => print("IconButton click"),
              ),
              FlatButton(
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                child: Text("Submit"),
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
