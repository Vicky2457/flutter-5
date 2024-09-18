import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  var nameFromHome;
  MyProfileScreen(this.nameFromHome);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Myprofile'),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome,$nameFromHome',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('back')),
            ],
          ),
        ),
      ),
    );
  }
}
