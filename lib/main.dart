import 'package:disenio/src/pages/scroll_design.dart';
import 'package:flutter/material.dart';

import 'package:disenio/src/pages/basic_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll_page',
      routes: {
        'basic_design': (_) => BasicDesignPage(),
        'scroll_page': (_) => ScrollPage(),
      },
    );
  }
}
