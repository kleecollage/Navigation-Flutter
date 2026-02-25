import 'package:flutter/material.dart';
import 'package:navigation/screens/configuration_screen.dart';
import 'package:navigation/screens/list_view_screen.dart';
import 'package:navigation/screens/news_screen.dart';
import 'package:navigation/screens/news_screen2.dart';
import 'package:navigation/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation List',
      initialRoute: '/',
      routes: {
        '/': (context) => const ListViewScreen(),
        '/news': (context) => const NewsScreen(title: '', description: ''),
        '/news2': (context) => const NewsScreen2(),
        '/profile': (context) => const ProfileScreen(),
        '/configuration': (context) => const ConfigurationScreen(),
      },
    );
  }
}
