import 'package:flutter/material.dart';

class ChatScreenPage extends StatelessWidget {
  const ChatScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chit Chat'),
        centerTitle: true,
      ),
    );
  }
}
