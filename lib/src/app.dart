import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:vdev_chat/src/resources/welcome_page.dart';

import 'resources/home_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final env = dotenv.env;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(fontFamily: 'Roboto', primaryColor: Colors.blue.shade100),
      title: env['NAME'].toString(),
      home: env['IS_LOGIN'] != null ? HomePage() : WelcomePage(),
    );
  }
}
