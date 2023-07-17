import 'package:flutter/material.dart';
import 'package:flutter_app_testing/home_page.dart';
import 'package:flutter_app_testing/next_page.dart';
import 'package:flutter_app_testing/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //   Map<String, Widget Function(BuildContext)> routes = {
    //   'second-page':(context) => NextPage(),
    //   'home-page':(context) => HomePage(),
    // };

    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
