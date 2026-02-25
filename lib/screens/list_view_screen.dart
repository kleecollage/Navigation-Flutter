import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:navigation/screens/news_screen.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    final faker = Faker();

    return Scaffold(
      appBar: AppBar(title: Text('Navigation List')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                final title = faker.lorem.sentence();
                final description = faker.lorem.word();

                return ListTile(
                  leading: const Icon(Icons.article_outlined, color: Colors.indigo),
                  title: Text(title),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NewsScreen(title: title, description: description),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/news2');
                  },
                  child: const Text('Go to news2'),
                ),

                ElevatedButton(
                  onPressed: () {
                    if (Navigator.canPop(context)) {
                      Navigator.maybePop(context);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('No previous screens to back')),
                      );
                    }
                  },
                  child: Text('Back using maybepop'),
                ),
              ],
            ),
          )

        ],
      ),


      // body: ListView(
      //   children: [
      //     ListTile(
      //       leading: const Icon(Icons.article, color: Colors.blueGrey),
      //       title: const Text('News'),
      //       trailing: const Icon(Icons.arrow_forward_rounded),
      //       onTap: () {
      //         log('Executing ...');
      //         Navigator.pushNamed(context, '/news');
      //       },
      //     ),
      //     const SizedBox(height: 20),
      //     ElevatedButton(
      //       onPressed: () {
      //         if (Navigator.canPop(context)) {
      //           Navigator.maybePop(context);
      //         } else {
      //           ScaffoldMessenger.of(context).showSnackBar(
      //             SnackBar(content: Text('No previous screens to back')),
      //           );
      //         }
      //       },
      //       child: Text('Back using maybepop'),
      //     ),
      //     const SizedBox(height: 10),
      //     // ElevatedButton(
      //     //   onPressed: () {
      //     //     Navigator.pop(context);
      //     //   },
      //     //   child: Text('Back using Pop'),
      //     // ),
      //   ],
      // ),
    );
  }
}
