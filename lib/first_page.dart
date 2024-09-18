import 'package:flutter/material.dart';
import 'package:project_5/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('first Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('This is First Page'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) =>
                  //       const SecondPage(data: "data from first page"),
                  // ));
                },
                child: const Text('Go to Second page'))
          ],
        ),
      ),
    );
  }
}
