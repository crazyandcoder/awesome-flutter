import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetCheckboxRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new CheckboxState();
  }
}

class CheckboxState extends State<WidgetCheckboxRoute> {
  bool _switchSelected = false; //维护单选开关状态
  bool _checkboxSelected = false; //维护复选框状态

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox test'),
      ),
      body: Column(
        children: <Widget>[
          Switch(
            value: _switchSelected,
            onChanged: (value) {
              //重新构建页面
              setState(() {
                _switchSelected = value;
              });
            },
          ),
          Checkbox(
            activeColor: Colors.red, //选中时的颜色
            value: _checkboxSelected,
            onChanged: (value) {
              setState(() {
                _checkboxSelected = value;
              });
            },
          )
        ],
      ),
    );
  }
}
