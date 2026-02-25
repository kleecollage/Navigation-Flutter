import 'dart:developer';

import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigation List')),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.article, color: Colors.blueGrey),
            title: const Text('News'),
            trailing: const Icon(Icons.arrow_forward_rounded),
            onTap: () {
              log('Executing ...');
              Navigator.pushNamed(context, '/news');
            },
          ),
        ],
      ),
    );
  }
}
