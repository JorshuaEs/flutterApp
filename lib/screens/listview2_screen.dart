import "package:flutter/material.dart";

class ListViewScreen2 extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash Bros',
    'Final Fantasy',
  ];

  const ListViewScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('List view type 2')),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) => ListTile(
              title: Text(options[i]),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.indigo,
              ),
              onTap: () {
                final game = options[i];
                print(game);
              }),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
