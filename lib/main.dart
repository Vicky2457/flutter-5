import 'package:flutter/material.dart';
import 'package:project_5/home_page.dart';
import 'package:project_5/second_page.dart';
import 'package:project_5/state/app_state.dart';
import 'package:provider/provider.dart';
import 'first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: HomePage(),

        home: const FirstPage(),
        routes: {'/second': (context) => const SecondPage(data: 'data from main')},
      ),
    );
  }
}
