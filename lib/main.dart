import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:disenio/src/pages/home_page.dart';
import 'package:disenio/src/pages/scroll_design.dart';
import 'package:disenio/src/pages/basic_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_page',
      routes: {
        'basic_design': (_) => BasicDesignPage(),
        'scroll_page': (_) => ScrollPage(),
        'home_page': (_) => HomePage(),
      },
    );
  }
}
