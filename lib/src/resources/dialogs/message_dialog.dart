import 'package:flutter/material.dart';

class MessageDialog {
  static void show(BuildContext context, String title, String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop(MessageDialog);
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
    );
  }
}