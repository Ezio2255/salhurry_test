import 'package:flutter/material.dart';

class ScreenNotification extends StatelessWidget {
  const ScreenNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("notifications"),),
      body: const SafeArea(child: Center(child: Text("Notifications"))),
    );
  }
}
