import 'package:flutter/material.dart';
import 'package:project_5/navigation.dart/my_profile_screen.dart';
import 'package:project_5/navigation.dart/splashscreen.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Splashscreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'dashboardScreen',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 11,
            ),
            TextField(
              controller: nameController,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MyProfileScreen(nameController.text.toString()),
                      ));
                },
                child: Text('my PRofile'))
          ],
        ),
      )),
    );
  }
}
