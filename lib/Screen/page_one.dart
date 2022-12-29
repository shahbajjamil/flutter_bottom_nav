import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Page'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'pageTwo');
                },
                child: const Text('GO to Page Two')),
          ],
        ),
      ),
    );
  }
}
