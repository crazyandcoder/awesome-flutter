import 'package:flutter/material.dart';
import 'package:flutter_demo_counter/ArguementRoute.dart';
import 'package:flutter_demo_counter/NewRoute.dart';
import 'package:flutter_demo_counter/TipRoute.dart';
import 'package:flutter_demo_counter/WidgetButtonRoute.dart';
import 'package:flutter_demo_counter/WidgetImageRoute.dart';
import 'package:flutter_demo_counter/WidgetCheckboxRoute.dart';
import 'package:flutter_demo_counter/WidgetInputRoute.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "new_route": (context) => NewRoute(),
        "tip_route": (context) => TipRoute(),
        "arguement_route": (context) => ArguementRoute(),
        "button_route": (context) => WidgetButtonRoute(),
        "image_route": (context) => WidgetImageRoute(),
        "checkbox_route": (context) => WidgetCheckboxRoute(),
        "input_route": (context) => WidgetInputRoute(),
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FlatButton(
              child: Text(
                "open new page",
                textScaleFactor: 1,
                style: TextStyle(fontSize: 30),
              ),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "new_route");
              },
            ),
            FlatButton(
                textColor: Colors.red,
                child: Text(
                  'open TipRoute',
                  textScaleFactor: 1,
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () async {
                  var result = await Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return TipRoute(
                        text: "我是提示xxxx",
                      );
                    },
                  ));

                  print(result);
                }),
            FlatButton(
              textColor: Colors.amber,
              child: Text(
                'open arguement route',
                textScaleFactor: 1,
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () => Navigator.pushNamed(context, 'arguement_route',
                  arguments: 'hello, this is arguement from main.dart'),
            ),
            FlatButton(
              textColor: Colors.amber,
              child: Text(
                'open button route',
                textScaleFactor: 1,
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () => Navigator.pushNamed(context, 'button_route',
                  arguments: 'hello, this is arguement from main.dart'),
            ),
            FlatButton(
              textColor: Colors.amber,
              child: Text(
                'open image route',
                textScaleFactor: 1,
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () => Navigator.pushNamed(context, 'image_route',
                  arguments: 'hello, this is arguement from main.dart'),
            ),
            FlatButton(
              textColor: Colors.amber,
              child: Text(
                'open checkbox route',
                textScaleFactor: 1,
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () => Navigator.pushNamed(context, 'checkbox_route',
                  arguments: 'hello, this is arguement from main.dart'),
            ),
            FlatButton(
              textColor: Colors.amber,
              child: Text(
                'open input route',
                textScaleFactor: 1,
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () => Navigator.pushNamed(context, 'input_route',
                  arguments: 'hello, this is arguement from main.dart'),
            )
          ],
        ),
      ),
    );
  }
}
