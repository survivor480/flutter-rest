import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Follow on"),
            )
          ],
        ),
      ),
    );
  }
}
