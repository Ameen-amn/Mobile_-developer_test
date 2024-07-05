import 'package:flutter/material.dart';
import 'package:skyland_test/features/task1/presentation/pages/sts_screen.dart';
import 'package:skyland_test/features/task3/presentation/web3_main.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/homeScreen';
  HomeScreen({super.key});

  final Map<String, dynamic> taskMap = {
    'Task 1': StonePaperScissorScreen.stonePaperScissorScreen,
    'Task 2': '',
    'Task 3': MetaMaskHomescreen.routeName,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: taskMap.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            if (index != 1) {
              Navigator.of(context).pushNamed(taskMap.values.toList()[index]);
            }
          },
          title: Text(
            taskMap.keys.toList()[index],
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
