import 'package:flutter/material.dart';
import 'package:project_5/state/app_state.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
//create instance of provider
  @override
  Widget build(BuildContext context) {
    //1 st way
    AppState provider = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Code is coding"),
      ),
      body: Center(child: Consumer<AppState>(
        builder: (context, ProviderValue, child) {
          return Text(
            'Provider value${provider.temp}',
            style: const TextStyle(fontSize: 30),
          );
        },
      )),
    );
  }
}
