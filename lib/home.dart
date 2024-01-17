import 'package:flutter/material.dart';

import 'messaging_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _messagingService =
  MessagingService(); // Instance of MessagingService for handling notifications

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text('Welcome')),
    );
  }

  @override
  void initState() {
    super.initState();
    _messagingService
        .init(context); // Ilize MessagingService to handle notifications
  }
}