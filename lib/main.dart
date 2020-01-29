import 'package:alert_remedios/widget_camera.dart';
import 'package:alert_remedios/widget_home.dart';
import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeWidget(),
        '/widgetCamera': (context) => WidgetCamera(),
      },
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
    );
  }
}

