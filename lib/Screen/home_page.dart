import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Page'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'pageOne');
                },
                child: const Text('GO to Page One')),
          ],
        ),
      ),
    );
  }
}
