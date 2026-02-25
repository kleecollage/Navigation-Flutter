import 'package:flutter/material.dart';

class NewsScreen2 extends StatelessWidget {
  const NewsScreen2({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text('News Screen 2')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/profile');
          },
          child: const Text('Go to profile'),
        ),
      ),
    );
  }
}