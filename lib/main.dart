import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter WebView',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => new MyHomePage(title: 'Flutter WebView Home'),
        '/game': (_) => new WebviewScaffold(
              url: 'https://www.google.com',
              appBar: new AppBar(
                title: new Text('Widget webview'),
              ),
            ),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new Center(
          child: new RaisedButton(
            child: new Text('Play Game'),
            onPressed: () => Navigator.of(context).pushNamed('/game'),
          ),
        ));
  }
}
