import 'package:flutter/material.dart';
import 'package:flutter_demo_counter/ArguementRoute.dart';
import 'package:flutter_demo_counter/NewRoute.dart';
import 'package:flutter_demo_counter/TipRoute.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("open new page"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "new_route");
              },
            ),
            FlatButton(
                textColor: Colors.red,
                child: Text('open TipRoute'),
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
              child: Text('open arguement route'),
              onPressed: () => Navigator.pushNamed(context, 'arguement_route',
                  arguments: 'hello, this is arguement from main.dart'),
            )
          ],
        ),
      ),
    );
  }
}
