import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'You curently have zero notifications.'
            ' They will appear here should you receive any.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16
            ),
          ),
        ),
      ),
    );
  }
}
